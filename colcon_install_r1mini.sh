mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone https://github.com/ros/ros_tutorials.git -b foxy-devel
cd ~/ros2_ws
colcon build
echo -e "\033[31m"Colcon workspace is created"\033[0m"

echo "source ~/ros2_ws/install/setup.bash">>~/.bashrc
echo "alias sai='sudo apt install'" >> ~/.bashrc
echo "alias cw='cd ~/ros2_ws'" >> ~/.bashrc
echo "alias cs='cd ~/ros2_ws/src'" >> ~/.bashrc
echo "alias cb='cd ~/ros2_ws && colcon build'" >> ~/.bashrc
echo "alias eb='mousepad ~/.bashrc'" >> ~/.bashrc
echo "alias sb='source ~/.bashrc'" >> ~/.bashrc
echo -e "\033[31m"bashrc modification is done. shotcut etc."\033[0m"

rosdep install -i --from-path src --rosdistro foxy -y
sudo apt install -y ros-foxy-gazebo-ros \
	ros-foxy-cartographer-ros \
	ros-foxy-nav2-map-server \
	openssh-server net-tools
pip3 install -U argcomplete pyserial
echo -e "\033[31m"extra ros package installation is done"\033[0m"

cd ~/ros2_ws/src
git clone https://github.com/omorobot/omo_r1mini-foxy.git
git clone https://github.com/PinkWink/YDLidar-SDK.git
git clone https://github.com/PinkWink/ydlidar_ros2_driver.git
cd ~/ros2_ws/src/YDLidar-SDK/build
cmake ..
make
sudo make install
#cd ~/ros2_ws/src/omo_r1mini-foxy/omo_r1mini_bringup
#sudo ./create_udev_rules.sh
#echo -e "\033[31m"UDEV setting is done. please reboot pc"\033[0m"
cd ~/ros2_ws
colcon build
colcon build
echo -e "\033[31m"omo_r1mini, ydlidar_ros2_driber package is downloaded and colcon build is done"\033[0m"
