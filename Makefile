PROJECT_VERSION=0.1

run-docker: 
	rm -rf Frontend
	rm -rf Backend
	rm -rf ImageSR
	git clone https://github.com/GCU-Graduate-Project-Sharpic/Frontend.git
	git clone https://github.com/GCU-Graduate-Project-Sharpic/Backend.git
	git clone https://github.com/GCU-Graduate-Project-Sharpic/ImageSR.git
	docker compose up --build -d

delete-cache:
	rm -rf Frontend
	rm -rf Backend
	rm -rf ImageSR
