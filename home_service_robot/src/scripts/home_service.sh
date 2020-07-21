#!/bin/sh
xterm  -e "source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(pwd)/src/world/my_world.world" &

sleep 5

xterm  -e "source devel/setup.bash; roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(pwd)/src/maps/my_world.yaml" &

sleep 5

xterm  -e "source devel/setup.bash; roslaunch turtlebot_rviz_launchers view_navigation.launch" &

sleep 5

xterm  -e "source devel/setup.bash; roslaunch add_markers add_markers.launch" &

sleep 10

xterm  -e "source devel/setup.bash; roslaunch pick_objects pick_objects.launch" &





