## Welcome to Sharpic Repository!

This repository is for the **integration** of the Sharpic project.
Each funtionallity repository is...  
For frontend: [Sharpic Frontend](https://github.com/GCU-Graduate-Project-Sharpic/Frontend)  
For backend: [Sharpic Backend](https://github.com/GCU-Graduate-Project-Sharpic/Backend)  
For RealSR: [Sharpic ImageSR](https://github.com/GCU-Graduate-Project-Sharpic/ImageSR )  

Simple summary of the project:
This project is a **web application** that allows users to upload images and then apply super resolution to them.  
The super resolution is done using the **RealSR** project. The user can then download the upscaled image.  
The database is built using **PostgreSQL**.   
The frontend is built using **HTML**, **CSS**, and **JavaScript**.   
The backend is built using **Python** and **Django**.  

## Run on localhost

```zsh
git clone --recurse-submodules https://github.com/GCU-Sharpic/sharpic.git
make run-docker
```

## For development

```zsh
git clone --recurse-submodules https://github.com/GCU-Sharpic/sharpic.git

# Set submodules as your forked repo
cd <submodule>
git remote set-url origin <your forked repo>

# Test docker run
make run-docker
```

Simple usage:
1. Clone the repository
2. Install the requirements
3. Run the server
4. Go to the website
5. Upload an image
6. Apply super resolution
7. Download the upscaled image

<img width="816" alt="스크린샷 2022-09-18 22 32 46" src="https://user-images.githubusercontent.com/71583831/190904804-41ccf180-eb7d-491b-9bdd-5964e347246e.png">

For more information, please see the documentation.
