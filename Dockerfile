FROM ghcr.io/autowarefoundation/autoware-universe:humble-2024.01-cuda-amd64
RUN mkdir $HOME/autoware_carla_docker
WORKDIR $HOME/autoware_carla_docker
RUN git clone https://github.com/autowarefoundation/autoware.git
WORKDIR $HOME/autoware_carla_docker/autoware/
RUN git checkout v1.0
RUN mkdir src && vcs import src << autoware.repos
WORKDIR $HOME/autoware_carla_docker/autoware/src/
RUN git clone https://github.com/TUMFTM/Carla_t2.git
WORKDIR $HOME/autoware_carla_docker/autoware/
RUN colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
COPY autoware.launch.xml $HOME/autoware_carla_docker/autoware/src/launcher/autoware_launcher/launch/
COPY tier4_localization_component.launch.xml $HOME/autoware_carla_docker/autoware/src/launcher/autoware_launcher/launch/components/
RUN colcon build --packages-select autoware_launch

