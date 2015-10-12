#!/bin/bash

set -e

export KUBERNETES_PROVIDER=aws

# profile in your ~/.aws/config file.
# mine is wolfeidau_dev
#export AWS_DEFAULT_PROFILE=org_name_env
export KUBE_AWS_ZONE=eu-west-1c
export NUM_MINIONS=2

# configured small for master as it gets busy
export MASTER_SIZE=t2.micro
export MINION_SIZE=m3.medium

# mine is wolfeidau_dev
export AWS_S3_BUCKET=elephone-kubernetes-artifacts
export INSTANCE_PREFIX=k8s

set +e

case "$1" in
    start)
        ./cluster/kube-up.sh
        ;;
    stop)
        ./cluster/kube-down.sh
        ;;
    status)
        ./cluster/kubectl.sh cluster-info
        ;;
   *)
        echo $"Usage: $0 {start|stop|status}"
        exit 1

    esac
