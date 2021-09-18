#!/bin/bash
 
MAVLink_vars=(ALTITUDE ATTITUDE ATTITUDE_TARGET LOCAL_POSITION_NED POSITION_TARGET_GLOBAL_INT POSITION_TARGET_LOCAL_NED RC_CHANNELS_RAW SERVO_OUTPUT_RAW);

for i in ${MAVLink_vars[@]}; 
do 
	/home/enpaiva/anaconda3/bin/mavlogdump.py --types=$i --format=csv tlog_datasets/vuelo1.tlog > csv_datasets/vuelo1/$i.csv;
done

for i in ${MAVLink_vars[@]}; 
do 
	/home/enpaiva/anaconda3/bin/mavlogdump.py --types=$i --format=csv tlog_datasets/vuelo2.tlog > csv_datasets/vuelo2/$i.csv;
done


