#!/bin/bash

# Atura els serveis
docker service rm next_app
docker service rm next_db

# Esborra les dades
docker system prune -f
docker volume prune -f

# Actualitza el repo
git pull

# Executa el deploy
docker stack deploy -c nextcloud-only.yaml next
