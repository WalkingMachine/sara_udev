#!/usr/bin/env python
import roslaunch
import rospy
from os import listdir

package = 'rosserial_python'
executable = 'serial_node.py'
devPath = '/dev/SARA/arduinos/'
launchPortBase = '_port:='+devPath
nameBase = "name:=arduino_"

while not rospy.is_shutdown():

    rospy.init_node('en_Mapping', anonymous=True)
    uuid = roslaunch.rlutil.get_or_generate_uuid(None, False)
    roslaunch.configure_logging(uuid)

    try:

        for name in listdir(devPath):
            print("name:="+str(name))

            node = roslaunch.core.Node(package, executable)
            node.args = launchPortBase+name
            launch = roslaunch.scriptapi.ROSLaunch()
            launch.start()

            process = launch.launch(node)
            print process.is_alive()


    except:
        print('No arduino connected. Checking every 5 seconds.')
        rospy.sleep(5)
        continue

    break


print('All arduinos have started.')
while not rospy.is_shutdown():
    rospy.sleep(1)
process.stop()
#launch.spin()
