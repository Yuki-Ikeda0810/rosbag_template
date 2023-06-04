#!/bin/bash

rosbag_file="my_bag"
if [ $# = 0 ]; then
    echo "rosbag file name = " $rosbag_file
else
    echo "rosbag file name = " $1
    rosbag_file=$1
fi

cd ~/catkin_ws/src
rosbag record   /odom \
                /cmd_vel_mux/input/teleop  \
                -o $rosbag_file