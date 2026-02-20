#!/bin/bash
# deploy-sovereign-proxmox.sh
# Deploy Sovereign team to Proxmox LXC containers

set -e

PROXMOX_HOST="norpv1300"
TEMPLATE="local:vztmpl/ubuntu-24.04-standard_24.04-2_amd64.tar.zst"
STORAGE="local-lvm"
BRIDGE="vmbr0"

SOVEREIGN_MEMBERS=(
  "301:sovereign-lead:2GB:2:10GB"
  "302:regent-legal:2GB:2:10GB"
  "303:vault-banking:1GB:1:8GB"
  "304:scribe-docs:1GB:1:8GB"
  "305:consul-research:2GB:2:15GB"
)

echo "🐧 Deploying Sovereign Team to Proxmox..."

for member in "${SOVEREIGN_MEMBERS[@]}"; do
  IFS=':' read -r vmid hostname memory cores disk <<< "$member"
  
  echo "Creating: $hostname (VMID: $vmid)"
  
  # Create LXC container
  pct create $vmid $TEMPLATE \
    --hostname $hostname \
    --storage $STORAGE \
    --rootfs ${STORAGE}:${disk} \
    --memory $memory \
    --cores $cores \
    --net0 name=eth0,bridge=${BRIDGE},ip=dhcp \
    --features nesting=1,keyctl=1 \
    --ostype ubuntu \
    --unprivileged 1 \
    --onboot 1
    
  # Configure container
  pct set $vmid \
    --description "Sovereign Team - $(echo $hostname | cut -d'-' -f2)" \
    --tags "sovereign,team-sovereign,priority-high"
    
  # Start and configure
  pct start $vmid
  
  sleep 5
  
  # Agent setup
  pct exec $vmid -- bash -c "
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -qq
    apt-get install -y -qq curl git openssh-server ufw fail2ban
    systemctl enable ssh && systemctl start ssh
    curl -fsSL https://install.openclaw.ai | bash
    mkdir -p /root/clawd/{specializations,knowledge,memory}
  "
  
  echo "✅ $hostname (VMID: $vmid) deployed"
done

echo ""
echo "🎉 Sovereign team deployment complete!"
echo "Next: Configure inter-agent communication and SKMemory integration"
