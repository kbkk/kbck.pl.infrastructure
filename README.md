# kbck.pl Infrastructure

### Preparing a new server
- Install docker
- Run `docker swarm init`

### Services
- TeamSpeak 3

### Deploy
- `docker stack deploy -c docker-compose.yml kbck`

### Operate
```
# List stacks
docker stack ls

# List services
docker stack ps kbck
```
