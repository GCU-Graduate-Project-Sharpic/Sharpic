PROJECT_VERSION=0.2

run-docker: 
	docker compose up --build -d

stop-docker:
	docker compose down -v

delete-docker:
	docker compose down --rmi=all -v
