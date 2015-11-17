#! /bin/bash

/usr/bin/sametime80
count=0
while [ $count -le 6 ]
do
	case "$(pidof sametime | wc -w)" in
	#sametime is alive, because container will normally exit with sametime running for some reason
	1)	sleep 1
		;;
	*) count=$(( $count + 1))
		sleep 1
		;;
	esac
done