@echo off
echo Stopping all Kubernetes resources...

REM Skalieren Sie alle Deployments auf 0 Replikate
kubectl scale --all deployments --replicas=0

REM Skalieren Sie alle StatefulSets auf 0 Replikate
kubectl scale --all statefulsets --replicas=0

REM Löschen Sie alle DaemonSets
kubectl delete daemonsets --all

REM Löschen Sie alle Pods
kubectl delete pods --all

REM Löschen Sie alle Services
kubectl delete services --all

REM Löschen Sie alle Ingress
kubectl delete ingress --all

REM Löschen Sie alle ConfigMaps
kubectl delete configmaps --all

REM Löschen Sie alle Secrets
kubectl delete secrets --all

echo All Kubernetes resources have been stopped.
pause
