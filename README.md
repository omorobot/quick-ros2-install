# quick-ros2-install

ubuntu & xubuntu 20.04에 ROS2 설치 및 환경 설정하기 위한 스크립트입니다.  
ubuntu & xubuntu 20.04, ROS2-foxy 버전에서 테스트 되었습니다.

우선 nuc 및 jetson nano에 ubuntu & xubuntu 20.04 를 설치한다.  
그리고 업데이트를 먼저 수행하고 완료되면 재부팅 후 ros2 설치를 시작한다.

## ros2_install.sh

ros2 foxy 버전을 설치하는 경우 터미널에 다음과 같이 입력합니다.  

```
./ros_install.sh
```
설치가 완료되면 재부팅 하도록 한다.
  
  
## colcon_install_r1mini.sh / colcon_install_r1d2.sh

ROS2 설치 후 아래 명령중 하나를 실행하여 ros2_ws를 생성한다.  
그리고 .bashrc 에 각종 단축키 등을 등록하고 r1mini & r1d2 관련  
추가 패키지를 다운로드 및 colcon build 한다.

설치 중간에 비밀번호 입력하는 부분이 있다.  
잘보고 있다가 비밀번호 넣자. 설치는 그렇게 오래 걸리지 않는다.

r1mini 패키지 설치 할 경우
```
./colcon_install_r1mini.sh
```
r1d2 패키지 설치 할 경우
```
./colcon_install_r1d2.sh
```
PC를 재부팅 하도록 한다.



Maintained by OMOROBOT INC
