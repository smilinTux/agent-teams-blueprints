# 🔨 Development Professional

> Software architecture, code generation, QA/Testing

## Overview

The Development team architects and builds software solutions for the SKStacks ecosystem. Led by Forge, this team handles blueprints, templates, video processing, and quality assurance. This team operates at **🟡 MEDIUM SECURITY** level.

## Team Composition

| Agent | VMID | Role | Focus | Status |
|-------|------|------|-------|--------|
| **Forge** | 208 | **Team Lead** | FORGEPRINT, architecture | ✅ Operational |
| **Dev-Beta** | 210 | Template Engine | Nextcloud ingestion | ✅ Operational |
| **Dev-Gamma** | 211 | Video Pipeline | Frame extraction | ✅ Operational |
| **Dev-Delta** | 212 | QA/Testing | Testing, verification | ✅ Operational |

## Current Projects

- **FORGEPRINT**: AI-native software blueprints
- **Template Engine**: Nextcloud document processing
- **Video Pipeline**: Frame extraction for analysis
- **QA Automation**: Testing gates and verification

## Responsibilities

### Forge (208) - Lead Architect
- Blueprint architecture
- Technical decisions
- Code review
- Team coordination

### Dev-Beta (210) - Templates
- Nextcloud ingestion
- File processing
- Template generation

### Dev-Gamma (211) - Video
- Frame extraction
- Media processing
- Thumbnail generation

### Dev-Delta (212) - QA
- Testing automation
- Blueprint verification
- Quality gates

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

| Component | Per Agent | Total (4 agents) |
|-----------|-----------|------------------|
| CPU | 1 vCPU | 4 cores |
| RAM | 1-2 GB | 5 GB |
| Storage | 8 GB | 32 GB |
