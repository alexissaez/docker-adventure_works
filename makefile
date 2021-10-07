logs: # database logs
	docker-compose logs -f --tail 0

build: # up container
	docker-compose build

up: # up container
	docker-compose up -d

delete: # delete container and image	
	docker-compose down --rmi all

destroy: # destroy all
	docker-compose down --rmi all
	docker-compose down -v

stop:
	docker-compose stop

bash:
	docker exec -it adventure_works bash