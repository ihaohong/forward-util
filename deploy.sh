#!/bin/bash

function get_help() {
    echo "Usage: $0
    pull               # 拉取镜像
    deploy             # 部署镜像
    "
}

function log() {
    echo -e "\033[32m[ LOG ]\033[0m  $1"
}

function step() {
    check
    echo -e "\033[33m[STEP$1]\033[0m  $2"
}

function error() {
    echo -e "\033[31m[ERROR]\033[0m $1"
}

function check() {
    if [ $? != "0" ];then
        error "previous step failed, stop execute"
        exit 1
    fi
}

function pull() {
	log "pull"
}

function deploy() {
	log "deploy"
}


case "$1" in
	pull)
		pull
		;;
    deploy)
        deploy
        ;;
    *)
        get_help
esac