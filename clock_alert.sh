#!/bin/env sh

TIME=`date +%T.%N`
USC=`echo $TIME | cut -d . -f 2`
LAST=$[ 10#$USC - $((10#$USC % 100000000)) ]

while true
do
    TIME=`date +%T.%N`
    USC=`echo $TIME | cut -d . -f 2`
    SEC=`echo $TIME | cut -d : -f 3 | cut -d . -f 1`
    NEW=$[ 10#$USC - $((10#$USC % 100000000)) ]
    if [ $LAST != $NEW ];then
        echo $TIME
# if [ $NEW = "400000000" ];then
#           echo "=========click-----------------"
#       fi
        if [ $NEW = "500000000" ];then
            echo "*******************************"
            echo "*******************************"
        fi
    fi

    LAST=$NEW
done
