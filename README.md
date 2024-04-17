# Docker
[Hyperskil](https://hyperskill.org/tracks/64)'s Introduction to Docker track.

- [Docker](#docker)
  - [Projects](#projects)
  - [Sections](#sections)
    - [01: helloworld](#01-helloworld)
    - [02: basic operations with a container](#02-basic-operations-with-a-container)
    - [03: docker build and docker tag](#03-docker-build-and-docker-tag)
    - [04: dockerfile - from, label, cmd, entrypoint](#04-dockerfile---from-label-cmd-entrypoint)
    - [05: dockerfile - run, shell](#05-dockerfile---run-shell)
    - [06: networking](#06-networking)
    - [07: volumes](#07-volumes)
    - [08: mutli stage building](#08-mutli-stage-building)
    - [09: docker file - copy, add, env, arg](#09-docker-file---copy-add-env-arg)
    - [10: dockerfile - user, workdir, expose](#10-dockerfile---user-workdir-expose)

## Projects
#|project|rating|hours to complete
:-:|:-:|:-:|:-:
1|[run docker run](./projects/run_docker_run/README.md)|⭐4.4|~6 hours
2|[hyper network](./projects/hyper_network/README.md)|⭐4.4|~6 hours
3|[composer](./projects/composer/README.md)|⭐4.4|~9 hours
<hr/>

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
2|[docker container ls -a](./02_container/02_list_containers.sh)|list containers
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
6|[entrypoint instruction v2](./04_dockerfile_01/05_entrypoint_instruction_v2.sh)|does not prevent
7|[cmd and entrypoint instruction](./04_dockerfile_01/06_cmd_and_entrypoint_instruction.sh)|combination of cmd and entrypoint
<hr/>

### 05: dockerfile - run, shell
#|command|topic
:-:|:-:|:--
1|[run instruction](./05_dockerfile_02/01_run_instruction.sh)|one command, create demo directory inside /tmp directory and list /tmp folder's contents
2|[run instruction](./05_dockerfile_02/02_run_instruction.sh)|two commands, install iputils-ping package to the image
3|[run instruction](./05_dockerfile_02/03_run_instruction.sh)|several commands, use \ to transfer to the next line
4|[run instruction](./05_dockerfile_02/04_run_instruction_mounts.sh)|to speed up build process, docker will use cache from the target directory in case it needs to rebuild the run layer in later builds
5|[shell instruction](./05_dockerfile_02/05_shell_instruction.sh)|set the default shell for instructions operating with the shell form
6|[shell instruction](./05_dockerfile_02/06_shell_instruction.sh)|another sample
<hr/>

### 06: networking
#|command|topic
:-:|:-:|:--
1|[docker network](./06_network/01_docker_network.sh)|find network available
2|[docker network inspect](./06_network/02_network_inspect.sh)|inspecting networks
3|[docker create](./06_network/03_create_container.sh)|creating a container by specifying the network it will connect to when running it
4|[docker run](./06_network/04_docker_run.sh)|running a container specifying the desired network
5|[docker network connect](./06_network/05_docker_network_connect.sh)|attach an already-running container to a network
6|[docker network disconnect](./06_network/06_docker_network_disconnect.sh)|disconnect a container from the network
<hr/>

### 07: volumes
#|command|topic
:-:|:-:|:--
1|[docker volume create](./07_volumes/01_docker_volume_create.sh)|create a docker volume
2|[docker run](./07_volumes/02_docker_run.sh)|launch a container and mount the volume
3|[docker exec](./07_volumes/03_docker_exec.sh)|write some data to the mounted volume
<hr/>

### 08: mutli stage building
#|command|topic
:-:|:-:|:--
1|[two stages docker file](./08_multi_stage_building/01_two_stages.sh)|docker with two stages
<hr/>

### 09: docker file - copy, add, env, arg
#|command|topic
:-:|:-:|:--
1|[docker run](./09_dockerfile_03/01_docker_run.sh)|print the working directory
2|[copy instruction](./09_dockerfile_03/02_copy_demo.sh)|copy a file into root directory
3|[copy instruction](./09_dockerfile_03/03_copy_chown.sh)|copy with change of file owner
4|[add instruction](./09_dockerfile_03/04_add.sh)|add an archive source
5|[env instruction](./09_dockerfile_03/05_env_demo.sh)|declare environment variables
6|[env instruction](./09_dockerfile_03/06_env_run.sh)|set environment variable when running the container
7|[arg instruction](./09_dockerfile_03/07_arg_demo.sh)|assign the value during image build time
<hr/>

### 10: dockerfile - user, workdir, expose
#|command|topic
:-:|:-:|:--
1|[user instruction](./10_dockerfile_04/01_user_demo.sh)|switch to another user
2|[user instruction](./10_dockerfile_04/02_specify_group_and_user.sh)|specify group coupled with the user
2|[user instruction](./10_dockerfile_04/02_specify_group_and_user.sh)|specify group coupled with the user
3|[workdir instruction](./10_dockerfile_04/03_set_up_working_directory.sh)|set the working directory
4|[workdir instruction](./10_dockerfile_04/04_get_to_previous_directory.sh)|get back to the previous directory
5|[expose instruction](./10_dockerfile_04/05_expose_demo.sh)|specify the required ports
6|[expose instruction](./10_dockerfile_04/06_expose_specify_protocol_explicit.sh)|specify the protocol explicitly
<hr/>

<!--
### 0:
#|command|topic
:-:|:-:|:--
|[](./)|
<hr/>
-->

