# FROM ubuntu:20.04
FROM ghcr.io/autowarefoundation/autoware-universe:humble-2024.01-cuda-amd64
WORKDIR /autoware/
RUN mv src /
WORKDIR /
RUN rm -r autoware
RUN git clone https://github.com/autowarefoundation/autoware.git
RUN mv /src /autoware/
WORKDIR /autoware/
RUN git checkout v1.0
# RUN vcs import src < autoware.repos
# WORKDIR /autoware/src/
# RUN git clone https://github.com/TUMFTM/Carla_t2.git
# WORKDIR /autoware/
# RUN colcon build --symlink-install --cmake-args -DCMAKE_BUILD_TYPE=Release
# COPY autoware.launch.xml /autoware/src/launcher/autoware_launcher/launch/
# COPY tier4_localization_component.launch.xml /autoware/src/launcher/autoware_launcher/launch/components/
# RUN colcon build --packages-select autoware_launch
