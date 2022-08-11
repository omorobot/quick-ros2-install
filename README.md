# quick-ros2-install

ubuntu & xubuntu 20.04에 ROS2 설치 및 환경 설정하기 위한 스크립트입니다.  
ubuntu & xubuntu 20.04, ROS2-foxy 버전에서 테스트 되었습니다.

우선 nuc 및 jetson nano에 ubuntu & xubuntu 20.04 를 설치한다.  
그리고 업데이트를 먼저 수행하고 완료되면 재부팅 후 ros2 설치를 시작한다.

## ros2 설치하기

ros2 foxy 버전을 설치하는 경우 터미널에 다음과 같이 입력합니다.  

```
./ros_install.sh
```
설치가 완료되면 재부팅 하도록 한다.

## 추가 패키지 다운로드, 환경 설정 및 colcon build

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

## usb 장치 이름 고정하기 udev rules

jetson nano의 경우 usb 연결 시 별다른 제약사항이 없다.  
하지만 nuc의 경우 usb 위치를 고정하였기때문에 usb 연결 시 주의하자.  
일반적으로 전면은 mobile robot(usb가 2개일 경우 오른쪽)  
후면은 lidar(usb가 2개일 경우 위쪽)으로 연결하면 된다.  
r1d2 robot 출하시 라벨이 붙어서 나간다.  
참고로 nuc가 뒤집어져서 설치되어 있기때문에 위치 확인 잘하자.

r1mini udev rules 설정(jetson nano)
```
sudo ./r1mini_udev_rules.sh
```
r1d2 udev rules 설정(nuc11tnhi7, nuc11pahi5)
```
sudo ./r1d2_udev_rules.sh
```
혹시 다른 pc를 사용한다면 아래 명령으로 위치 확인하여 수정하도록 한다.
```
udevadm info -a -n /dev/ttyUSB*
```
---
Maintained by OMOROBOT INC
