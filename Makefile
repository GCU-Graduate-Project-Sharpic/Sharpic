PROJECT_VERSION=0.1

run-docker: 
	docker compose up --build -d

stop-docker:
	docker compose down

delete-docker:
	docker compose down --rmi=all -v
