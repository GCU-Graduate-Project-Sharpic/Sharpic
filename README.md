## Sharpic

Sharpic is a project to implementing photo-enhancing cloud with several models.

Sharpic provides the ability to upload and store images and improve their quality using several image processing models.

### Submodules

This repository is for the **integration** of the Sharpic project.<br>
Each funtionallity repository is as below.

Frontend: [sharpic-web](https://github.com/GCU-Sharpic/sharpic-web)  
Backend: [sharpic-server](https://github.com/GCU-Sharpic/sharpic-server)  
Image Processing: [sharpic-imagesr](https://github.com/GCU-Sharpic/sharpic-imagesr)  

The frontend is developed with **React.js**.<br>
The backend is developed with **Golang** with **Gin web framework** and **PostgreSQL**.<br>
The super resolution is using several models. Users can select processing model.

## Run on localhost

#### Prerequisites

- Docker ([Installation Guide](https://docs.docker.com/engine/install/))
- GPU with cuda or ROCm
- Setting up to use CUDA or ROCm in Docker
- (For Nvidia: [Nvidia container toolkit](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) For AMD: [ROCm-docker](https://github.com/RadeonOpenCompute/ROCm-docker/blob/master/quick-start.md))

#### Clone and Run

```zsh
git clone --recurse-submodules https://github.com/GCU-Sharpic/sharpic.git

cd sharpic

# For Nvidia cuda user
make run-cuda-docker

# For AMD ROCm user
make run-rocm-docker
```

### For development with forked repo

```zsh
# Set submodules as your forked repoBy default, it points to the original repository, 
# so the settings below are required to work in the forked repo.
cd <submodule>
git remote set-url origin <your forked repo>
```

<img width="816" alt="스크린샷 2022-09-18 22 32 46" src="https://user-images.githubusercontent.com/71583831/190904804-41ccf180-eb7d-491b-9bdd-5964e347246e.png">

For more information, please see the each repository.
