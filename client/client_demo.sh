#!/bin/bash

counter=0
while true
do
    counter=$(($counter + 1))

    # Home
    if [[ $(($counter % 5)) == 0 ]]
    then
        curl http://nginx/python_demo/ >> home.html
    fi

    # Error
    if [[ $(($counter % 10)) == 0 ]]
    then
        curl http://nginx/python_demo/tfm-pere >> error404.html
    fi

    counter=$(($counter + 1))
    sleep 1
done