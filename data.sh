#!/bin/bash
 
MAVLink_vars=(ATTITUDE_TARGET ATTITUDE POSITION_TARGET_LOCAL_NED LOCAL_POSITION_NED ALTITUDE HOME_POSITION RC_CHANNELS_RAW SERVO_OUTPUT_RAW BATTERY_STATUS);

for i in ${MAVLink_vars[@]}; 
do 
	/home/enpaiva/anaconda3/bin/mavlogdump.py --types=$i --format=csv $1 > $i.csv;
	echo "$i .... OK";
done

