#!/bin/bash
container=
get_container_id() {
    echo searching container id for $1
    container=$(docker ps | grep $1 | grep opt |  awk '{print $1}')
}

function fs_container_login {
    if [[ $1 == "" ]]; then
        echo "please specify the container name, for e.g: asicd, intfd, adjd, etc..."
        return
    fi
    get_container_id $1
    echo logging into conatiner:$1 and id: $container
    docker exec -it $container /bin/bash
}

function fs_container_logs {
    if [[ $1 == "" ]]; then
        echo "please specify the container name, for e.g: asicd, intfd, adjd, etc..."
        return
    fi
    get_container_id $1
    echo dumping logs for conatiner:$1 and id: $container
    echo docker logs $container 
    docker logs $container
}
