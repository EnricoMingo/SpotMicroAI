#!/bin/bash

pathadd() {
    if [ -z ${!1} ]; then
        export $1=$2
    elif [ -d "$2" ] && [[ ! ${!1} =~ (^|:)$2(:|$) ]]; then
        export $1+=:$2
    fi
}

pathadd ROS_PACKAGE_PATH $ROBOTOLOGY_ROOT/personal/SpotMicroAI
