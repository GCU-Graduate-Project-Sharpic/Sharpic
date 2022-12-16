PROJECT_VERSION=0.2

run-cuda-docker: 
	docker compose -f ./docker-compose-cuda.yml up --build -d

run-rocm-docker:
	docker compose -f ./docker-compose-rocm.yml up --build -d

stop-cuda-docker:
	docker compose -f ./docker-compose-cuda.yml down -v

stop-rocm-docker:
	docker compose -f ./docker-compose-rocm.yml down -v

delete-cuda-docker:
	docker compose -f ./docker-compose-cuda.yml down --rmi=local -v

delete-rocm-docker:
	docker compose -f ./docker-compose-rocm.yml down --rmi=local -v
