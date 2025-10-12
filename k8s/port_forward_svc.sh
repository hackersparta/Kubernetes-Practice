#!/bin/bash

# UAT service
kubectl port-forward svc/apache-uat-svc 8981:80 &
echo "Port-forwarding apache-uat-svc on 8981 -> 80"

# QATest service
kubectl port-forward svc/apache-qatest-svc 8982:80 &
echo "Port-forwarding apache-qatest-svc on 8982 -> 80"

# Production service
kubectl port-forward svc/apache-production-svc 8983:80 &
echo "Port-forwarding apache-production-svc on 8983 -> 80"

# Optional: list all background jobs
jobs


