# README

# Start App
docker compose up

# Rebuild app upon changes to docker config
docker compose up --build

# run migrations
docker exec web_container_id rake db:migrate