docker-start:
	docker compose up -d --build --force-recreate
docker-refresh:
	docker kill $(docker ps -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -q)
	docker compose up -d