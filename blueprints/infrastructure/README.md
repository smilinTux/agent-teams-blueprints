# 🛡️ Infrastructure Professional

> Security, infrastructure, DevOps, database management

## Overview

The Infrastructure team maintains the SKStacks foundation—Proxmox clusters, Docker Swarm, databases, security, and monitoring. This team operates at **🟡 MEDIUM SECURITY** level.

## Team Composition

| Agent | VMID | Role | Focus | Status |
|-------|------|------|-------|--------|
| **Sentinel** | 202 | **Team Lead** | Swarm operations, monitoring | ✅ Operational |
| **Rook** | 203 | Security Specialist | Hardening, SSH, VPN | ✅ Operational |
| **Dev-Alpha** | 209 | Database Specialist | Qdrant, FalkorDB, Supabase | ✅ Operational |

## Current Projects

- **SKMesh VPN**: Netbird mesh deployment
- **SKVector**: Qdrant vector database maintenance
- **SKGraph**: FalkorDB graph operations
- **Agent VM Platform**: 12 agents on norpv1300

## Responsibilities

### Sentinel (202) - Infrastructure Guardian
- Docker Swarm / K8s operations
- Infrastructure monitoring
- Alert management
- Team coordination

### Rook (203) - Security
- Security hardening
- SSH key management
- Firewall rules
- VPN (SKMesh)

### Dev-Alpha (209) - Databases
- Qdrant maintenance
- FalkorDB operations
- Database backups
- Performance tuning

## Quick Start

### Proxmox LXC

```bash
./scripts/deploy-proxmox.sh
```

### Bare Metal

```bash
ansible-playbook ansible/deploy.yml
```

## Resource Requirements

| Component | Per Agent | Total (3 agents) |
|-----------|-----------|------------------|
| CPU | 1 vCPU | 3 cores |
| RAM | 1 GB | 3 GB |
| Storage | 8 GB | 24 GB |

## Security Measures

- [x] SSH key authentication only
- [x] Ansible vault for credentials
- [x] Network segmentation via SKMesh
- [x] Monthly security audits
