# sara_udev
udev rules for S.A.R.A.

# Description
Udev help remaping all USB device for [SARA](walkingmachine.ca).
The install create a soft link in the folder `/lib/udev/rules.d/`

# Usage
**IT MUST BE RUN AS ROOT**
To insall all udev in `one shot`:
```
sudo ./install.sh
```
#Arduinos
Plug the arduino through a usb port.
Run command : dmesg
Get the serial number of the arduino.
Got to the arduino udev file.
Add new line with the serial number and set the name.
Install the udevs with sudo ./install.sh
Test with: ls -l /dev/Your_arduino_name
