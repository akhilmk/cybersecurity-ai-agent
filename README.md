# Cyber Security AI Agent

An experimental project to learn **LangGraph** by building a real-world multi-agent cybersecurity system.

> Based on [vitalii-honchar/cybersecurity-ai-agent](https://github.com/vitalii-honchar/cybersecurity-ai-agent).

## 🚀 Quick Start (UV)

This project uses [uv](https://docs.astral.sh/uv/) for high-performance package management.

### Installation
```bash
# Clone the repository
git clone git@github.com:akhilmk/cybersecurity-ai-agent.git
cd cybersecurity-ai-agent

# Install dependencies and create venv
uv sync --group dev
```

### Development
```bash
# Run tests
uv run pytest

# Format code
uv run ruff check --select I --fix .
```

## 🏗️ Architecture

The system is built as a graph of specialized agents:

- `src/agent_core/` - Shared abstractions and base classes.
- `src/scan_agent/` - ReAct agent focused on reconnaissance and target discovery.
- `src/attack_agent/` - ReAct agent focused on vulnerability exploitation.
- `src/cybersecurity_agent/` - The orchestrator graph that coordinates the workflow.

> [!NOTE]
> `src/target_scan_agent/` is a legacy implementation preserved for reference.

## 🔗 Upstream & Fresh Start

This repository was initialized as a fresh start from the original source.

**Original Author:** [Vitalii Honchar](https://github.com/vitalii-honchar)  
**Original Repo:** [cybersecurity-ai-agent](https://github.com/vitalii-honchar/cybersecurity-ai-agent.git)

To pull latest updates from the original source:
```bash
git remote add upstream https://github.com/vitalii-honchar/cybersecurity-ai-agent.git
git fetch upstream
git merge upstream/main --allow-unrelated-histories
```

## AI Agent Patterns
- Mixture of Experts (MoE)
- ReAct (Reasoning and Acting)
- LangGraph Workflows