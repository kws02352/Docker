# Docker
## PyTorch & Tensorflow requirements
1. NVIDIA Driver
2. NVIDIA Container Toolkit
	- ``` $ distribution=$(. /etc/os-release;echo $ID$VERSION_ID) ```
	- ``` $ curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - ```
	- ``` $ curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list ```
	- ``` $ sudo apt-get update ```
	- ``` $ sudo apt-get install -y nvidia-container-toolkit ```

	######  Docker restart
	- ``` $ sudo systemctl restart docker ```

## Usage
1. ```sh ./build_docker.sh ```
2.  ```sh ./run_docker.sh```

## Tip
- 권한 주기(root 권한): sudo usermod -a -G docker {USERNAME}
- Docker 중간에 들어가기: docker attach {container id}
- Docker 끄기: exit
- Docker 확인: docker ps
- Docker container 목록 확인: docker images
- Docker container 제거: docker rm [OPTIONS] CONTAINER [CONTAINER...]
- Docker image 확인: docker images [OPTIONS] [REPOSITORY[:TAG]]