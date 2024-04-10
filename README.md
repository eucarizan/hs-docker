# Docker
[Hyperskil](https://hyperskill.org/tracks/64)'s Introduction to Docker track.

- [Docker](#docker)
  - [Sections](#sections)
    - [01: helloworld](#01-helloworld)
    - [02: basic operations with a container](#02-basic-operations-with-a-container)
    - [03: docker build and docker tag](#03-docker-build-and-docker-tag)
    - [04: dockerfile - from, label, cmd, entrypoint](#04-dockerfile---from-label-cmd-entrypoint)

## Sections
### 01: helloworld
#|command|topic
:-:|:-:|:--
1|[docker version](./01_helloworld/01_docker_version.sh)|show docker version
2|[docker pull](./01_helloworld/02_docker_pull.sh)|pull any image from docker registry
3|[docker images](./01_helloworld/03_list_images.sh)|list docker images
4|[docker run](./01_helloworld/04_run_image.sh)|create container
<hr/>

### 02: basic operations with a container
#|command|topic
:-:|:-:|:--
1|[docker container create](./02_container/01_create_container.sh)|create a container
2|[docker container ls -a](./02_container/02_list_container.sh)|list containers
3|[docker container start](./02_container/03_start_container.sh)|start container
4|[docker container exec](./02_container/04_container_exec.sh)|execute commands in a running docker
5|[docker container stop](./02_container/05_container_stop.sh)|stop currently running containers
6|[docker container rm](./02_container/06_remove_container.sh)|remove one or more docker containers
<hr/>

### 03: docker build and docker tag
#|command|topic
:-:|:-:|:--
1|[docker build](./03_build-and-tag/01_build_image_using_dockerfile.sh)|build an image
2|[docker build -t](./03_build-and-tag/02_set_imagename.sh)|specifying image name
<hr/>

### 04: dockerfile - from, label, cmd, entrypoint
#|command|topic
:-:|:-:|:--
1|[from instruction](./04_dockerfile_01/01_from_instruction.sh)|specify base image to use
2|[label instruction](./04_dockerfile_01/02_label_instruction.sh)|specify metadata inside a docker image
3|[docker inspect](./04_dockerfile_01/03_inspect_container.sh)|inspect the image or container
4|[cmd instruction](./04_dockerfile_01/04_cmd_instruction.sh)|run applications inside images, is executed after container instantiation
5|[entrypoint instruction v1](./04_dockerfile_01/05_entrypoint_instruction_v1.sh)|prevents from passing one more argument to echo when running a container
6|[entrypoint instruction v2](./04_dockerfile_01/05_entrypoint_instruciton_v2.sh)|does not prevent
7|[cmd and entrypoint instruction](./04_dockerfile_01/06_cmd_and_entrypoint_instruction.sh)|combination of cmd and entrypoint
<hr/>

<!--
### 0:
#|command|topic
:-:|:-:|:--
|[](./)|
<hr/>
-->
