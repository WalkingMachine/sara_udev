# sara_udev
udev rules for S.A.R.A.

# Description
Udev help remaping all USB device for [SARA](walkingmachine.ca).
The install create a soft link in the folder `/lib/udev/rules.d/`

# Installation
```
sudo ./install.sh
```
This script will create a softlink from **/etc/udev/rules.d** to **./rules.**

Just in case, a backup folder will be created in **./.etc_udev_rules.bak**

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