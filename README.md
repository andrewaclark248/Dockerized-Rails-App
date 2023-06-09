# README

# Start App
docker compose up

# Rebuild app upon changes to docker config
docker compose up --build

# run migrations
docker exec web_container_id rake db:migrate

# run seed file
docker exec web_container_id rails db:seed

# enter container
docker exec -it container_id bash


# features
seed data
Persist data in db
File Watch
Deployable to heroku