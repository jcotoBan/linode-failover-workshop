#!/bin/bash

IFS=$'\n' contexts=($(kubectl config get-contexts --output=name))

  for each in "${contexts[@]}"
   do
    kubectl config use-context $each
    kubectl delete svc 
    sleep 5
   done

