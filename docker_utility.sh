#!/bin/bash
container=
get_container_id() {
    echo searching container id for $1
    container=$(docker ps | grep $1 | grep opt |  awk '{print $1}')
}

function fs_login {
    if [[ $1 == "" ]]; then
        echo "please specify the container name, for e.g: asicd, intfd, adjd, etc..."
        return
    fi
    get_container_id $1
    echo logging into conatiner:$1 and id: $container
    docker exec -it $container /bin/bash -c "export COLUMNS=tput cols; export LINES=tput lines && reset -w && bash"
}

function fs_logs {
    if [[ $1 == "" ]]; then
        echo "please specify the container name, for e.g: asicd, intfd, adjd, etc..."
        return
    fi
    get_container_id $1
    echo dumping logs for conatiner:$1 and id: $container
    echo docker logs $container 
    docker logs $container
}

function fs_dmn_logs {
    if [[ $1 == "" ]]; then
        echo "please specify the container name, for e.g: asicd, intfd, adjd, etc..."
        return
    fi
    get_container_id $1
    echo dumping logs for conatiner:$1 and id: $container
    echo docker logs $container
    docker exec -it $container /bin/bash -c "export COLUMNS=tput cols; export LINES=tput lines && reset -w && cat /var/log/flexswitch/$1.log"
}

function fs_container_list {
    echo docker ps --format "table {{.ID}}\t{{.Names}}" | grep -v POD
    docker ps --format "table {{.ID}}\t{{.Names}}" | grep -v POD
}

function fs_container_running {
    echo docker ps --format "table {{.ID}}\t{{.Names}}" | grep -v POD
    docker ps | grep -v pause
}

function fs_clean_logs {
    echo /dev/null > /mnt/data/flexswitch/$1/logs/$1.log
}

function restart_flexswitch {
	./write_erash
	rm -rf /mnt/data/flexswitch/*
	snapl-load-charts
}

function fresh_start {
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker rmi $(docker images -q)
	restart_flexswitch
}
