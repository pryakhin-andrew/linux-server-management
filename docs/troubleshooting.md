# Troubleshooting

| Problem | Solution |
|---|---|
| `Permission denied` when running a script | `chmod +x scripts/*.sh` |
| `backup.sh` cannot create backup dir | Run with `sudo` |
| `systemctl: command not found` | The system does not use systemd |
| `$'\r': command not found` | Windows line endings, run `dos2unix scripts/*.sh` |
| Disk check gives wrong result | Check `git log -p scripts/disk_check.sh` and revert the bad commit with `git revert <hash>` |
