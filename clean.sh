#!/bin/bash
cd ~
kubectl delete svc nginx-workshop-service
terraform destroy
