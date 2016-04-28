#! /bin/bash

#three should do it
/usr/bin/sametime80
count=0
while [ $count -le 3 ]
do
	case "$(pidof sametime | wc -w)" in
	#sametime is alive, because container will normally exit with sametime running for some reason
	1)	sleep 20
		;;
	*) count=$(( $count + 1))
		sleep 20
		;;
	esac
done
