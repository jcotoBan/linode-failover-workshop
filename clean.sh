#!/bin/bash

IFS=$'\n' contexts=($(kubectl config get-contexts --output=name))

  for each in "${contexts[@]}"
   do
    kubectl config use-context $each
    kubectl delete svc nginx-workshop-service
    sleep 5
   done

