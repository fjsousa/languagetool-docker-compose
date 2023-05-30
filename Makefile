run:
	mkdir -p /tmp/languagetool/tmp
	echo "http://localhost:8010/v2/languages"
	docker compose up --force-recreate --build
	docker image prune -f

version-info:
	docker image inspect --format 'Created:{{.Created}} WorkingDir:{{.Config.WorkingDir}}' silviof/docker-languagetool:latest

stop:
	docker compose down
