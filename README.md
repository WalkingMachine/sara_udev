# Description
Udev help remaping all USB devices for [SARA](walkingmachine.ca).

# Installation
```
sudo ./install.sh
```
This script create a softlink from `/etc/udev/rules.d` to `./rules.`

Just in case, a backup folder will be created in **./.etc_udev_rules.bak**

# launch rosserial for arduinos
To initialise ros connections for all plugged arduino devices, run this command.
```
roslaunch sara_udev launch_arduinos.launch
```

# Udevs list
SARA
  * motors
    * roboteq
      * drive_%n
    * dynamixel
    * kinova
  * sensors
    * imu
    * laser_base
  * gripper
    * robotiq
  * arduino
    * device_%n

#References
http://www.joakimlinde.se/microcontrollers/arduino/avr/udev.php