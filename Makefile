build:
	docker-compose build

up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

start:
	make build && make up

restart:
	make down && make up

fixpermissions:
	echo "Changing orwnership of project files to current user, require sudo"
	sudo chown $(USER):$(USER) . -R

restore_database:
	mysql -u project -p123456 -h172.13.0.1 project < ./db.sql
