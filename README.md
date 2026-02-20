# Agent Teams Blueprints
> AI Professional Agent Team Deployment Patterns

## Overview

This repository contains deployment blueprints and team configurations for professional AI agent teams operating on SKStacks infrastructure.

## Repository Structure

```
agent-teams-blueprints/
├── blueprints/
│   ├── professional/          # Business-facing professional teams
│   │   ├── sovereign/         # Private banking, legal, trust management
│   │   ├── infrastructure/    # DevOps, security, monitoring
│   │   ├── development/       # Software engineering, architecture
│   │   ├── research/          # Market analysis, intelligence
│   │   ├── marketing/         # Content, branding, outreach
│   │   └── legal/             # Legal affairs, compliance, trusts
│   └── technical/             # Technical implementation details
│       ├── deployment/        # Deployment scripts and configs
│       ├── communication/     # Talk, Telegram integration
│       └── monitoring/        # Health checks, observability
└── teams/
    ├── sovereign-team.md       # Sovereign team composition
    └── all-teams.md            # Complete team reference
```

## Quick Start

Each professional category has:
- **README.md** - Team overview and responsibilities
- **agents.md** - Agent specifications and VMIDs
- **deployment.md** - Deployment instructions
- **scripts/** - Automation scripts

## Teams

| Team | VMID Range | Lead | Focus |
|------|-----------|------|-------|
| Sovereign | 301-305 | Sovereign | Private banking, legal, trusts |
| Infrastructure | 202-209 | Sentinel | DevOps, security, monitoring |
| Development | 208-212 | Forge | Software engineering |
| Research | 201 | Agent Zero | Market analysis |
| Marketing | 205-206 | Piper | Content, branding |
| Legal/Trusts | 207 | Vesper | Compliance, trusts |

## Usage

See individual team directories for specific deployment instructions.

## License

Apache 2.0 - See LICENSE file
