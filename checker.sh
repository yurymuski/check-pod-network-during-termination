#!/bin/sh
# Set a trap for SIGTERM signal
trap "echo -e \"\n\nSIGTERM The program is going to be terminated\n\n\"" TERM

while true; do
echo -e "\n\nstart"
sleep 1;
echo "external check"
curl -s https://geo.yurets.pro;
sleep 1;
echo "internal check"
curl -s kube-state-metrics.kube-system.svc.cluster.local:8080/metrics | head -n1;
sleep 1;
echo "finish"
sleep 5;

done
