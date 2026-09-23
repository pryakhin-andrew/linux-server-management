# Configuration

All settings are stored in `config/server.conf`.

| Variable | Description | Default |
|---|---|---|
| DISK_THRESHOLD | Disk usage limit in percent | 80 |
| SERVICES | Services checked by service_check.sh | ssh cron |
| BACKUP_SRC | Directory to back up | /etc |
| BACKUP_DIR | Where backups are saved | /var/backups/lsm |

Do not store passwords or keys in this file.
