# Linux Server Management

Set of bash scripts for basic Linux server administration: disk usage check, service status check and backup.

## Project structure

```
config/server.conf        settings for all scripts
scripts/disk_check.sh     checks disk usage
scripts/service_check.sh  checks systemd services
scripts/backup.sh         creates tar.gz backup
docs/installation.md      installation guide
docs/configuration.md     configuration guide
docs/troubleshooting.md   common problems
```

## Development workflow

1. Update main: `git checkout main && git pull`
2. Create a branch: `git checkout -b feature/<name>`
3. Commit changes with clear messages
4. Push and open a Pull Request to `main`
5. Get at least one approval, fix review comments
6. Merge the Pull Request

## Branching strategy

- `main` contains only stable, reviewed code. Direct pushes are blocked.
- `feature/*` for new functionality
- `fix/*` for bug fixes

## Contribution process

Every change goes through a Pull Request. The PR description must explain what was changed, why and how it was tested. The reviewer checks functionality, structure, documentation, security and maintainability.

## Testing process

```bash
bash -n scripts/*.sh
./scripts/disk_check.sh
./scripts/service_check.sh
```

## Troubleshooting

See [docs/troubleshooting.md](docs/troubleshooting.md). To find a bad change use `git log`, `git blame` and `git show`, then undo it with `git revert <hash>` to keep history.
