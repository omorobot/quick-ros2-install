#!/bin/bash

echo "Set locale (don't need)"
#locale  # check for UTF-8
#sudo apt update && sudo apt install locales
#sudo locale-gen en_US en_US.UTF-8
#sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
#export LANG=en_US.UTF-8
#locale  # verify settings

echo "Setup Sources (don't need)"
#apt-cache policy | grep universe
#sudo apt install software-properties-common
#sudo add-apt-repository universe

echo "Add repository"
sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

echo "Installing ros2"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	git \
	net-tools \
	ros-foxy-desktop \
	python3-pip \
	python3-colcon-common-extensions \
	python3-rosdep2 \
	ros-foxy-gazebo-ros-pkgs \
	ros-foxy-navigation2 \
	ros-foxy-nav2-bringup

echo "Sourcing the setup script"
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
source ~/.bashrc

rosdep update

echo "Done installing ros2"

exit 0
