# kbck.pl Infrastructure

### Preparing a new server
- Install docker
- Run `docker swarm init`

### Services
- `swarm-cronjob` - [Swarm Cronjob](https://crazymax.dev/swarm-cronjob/usage/get-started/)
- `backup` - Backup to BackBlaze (runs via cron, see `backup.Dockerfile`)
- `ts3` - TeamSpeak 3

### Deploy
- `./deploy.sh`

### Operate
```
# List stacks
docker stack ls

# List services
docker stack ps kbck
```
