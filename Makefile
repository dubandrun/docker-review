run:
	docker run -d -p 80:4200 --env-file ./config/.env -v logs:/app/data --rm --name logsapp logsapp:env
run-dev:
	docker run -d -p 80:4200 --env-file ./config/.env -v "D:/Web/Study/docker/docker-vladilen/logs-app:/app" -v /app/node_modules -v logs:/app/data --rm --name logsapp logsapp:env
stop:
	docker stop logsapp