FROM ghcr.io/autowarefoundation/autoware-universe:humble-2024.01-cuda-amd64
WORKDIR $HOME
RUN mkdir autoware_carla_docker
WORKDIR $HOME/autoware_carla_docker
RUN git clone https://github.com/autowarefoundation/autoware.git
# WORKDIR $HOME/autoware_carla_docker/autoware/
# RUN git checkout v1.0
# RUN mkdir src && vcs import src << autoware.repos
# WORKDIR $HOME/autoware_carla_docker/autoware/src/
# RUN git clone https://github.com/TUMFTM/Carla_t2.git
# WORKDIR $HOME/autoware_carla_docker/autoware/
# RUN colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
# WORKDIR $HOME/autoware_carla_docker/

# FROM tumgeka/carla-autoware-bridge:latest
