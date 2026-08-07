# OpenEdge Devcontainer Template

This repository is a starting point for an OpenEdge 12.8 development environment in VS Code Dev Containers. It provides:

- a development container with the OpenEdge ABL language server and MCP connector extension;
- a database container that creates the `sports2020` database from `db/schema` and `db/data`;
- a PAS container that runs the application from `src`.

It uses Docker Compose directly; DevPod is not required.

## Prerequisites

- Docker Engine with Docker Compose v2
- VS Code with the Dev Containers extension
- OpenEdge container images for development, database, and PAS
- A usable `progress.cfg` license configuration file

## Set up a project

1. Create a repository from this template and clone it.
2. Copy `.devcontainer/.env.example` to `.devcontainer/.env`.
3. Set the image names and the absolute path to `progress.cfg` in `.devcontainer/.env`.
4. Open the repository in VS Code and run **Dev Containers: Reopen in Container**.

The development container mounts the workspace at `/workspaces/content`, sets `PROPATH` to `./src,./bin`, and configures the OpenEdge 12.8 runtime at `/usr/dlc`.

## Services

| Service | Purpose | Ports |
| --- | --- | --- |
| `devcontainer` | VS Code development environment | None |
| `db` | Development database | `10000-10010` |
| `pas` | PAS application server | `${PAS_PORT:-8810}` to `8810` |

`PAS_PORT` is optional. When it is unset or empty, Docker Compose exposes PAS on host port `8810`.

## Customize

- Replace the sample schema and data under `db/` with project-specific database assets.
- Add application sources under `src/` and update `config/as.pf` for PAS settings.
- Update `openedge-project.json` and the VS Code OpenEdge runtime version if a different OpenEdge release is used.
- Review the host Git and SSH mounts in `.devcontainer/devcontainer.json`. They are optional local conveniences and may need changing or removing for your platform.

## Build

The included Ant build can compile sources and create the development database:

```sh
ant ci
```

Build output is written to `build/`; generated artifacts such as `bin/` are ignored by Git.
