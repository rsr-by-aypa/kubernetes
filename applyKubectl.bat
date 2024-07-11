@echo off

echo Secret created successfully.

echo Applying Kubernetes resources...

REM Anwenden der RabbitMQ Ressourcen
kubectl apply -f "C:\Users\Sara Heine\Desktop\RockSolidRemedies\k8s-config\rabbitmq.yaml"

REM Anwenden der PostgreSQL Ressourcen
kubectl apply -f "C:\Users\Sara Heine\Desktop\RockSolidRemedies\k8s-config\postgres.yaml"

REM Anwenden der PostgreSQL Keycloak Ressourcen
kubectl apply -f "C:\Users\Sara Heine\Desktop\RockSolidRemedies\k8s-config\postgres-keycloak.yaml"

REM Anwenden der Keycloak Ressourcen
kubectl apply -f "C:\Users\Sara Heine\Desktop\RockSolidRemedies\k8s-config\keycloak.yaml"

REM Anwenden der Product Microservice Ressourcen
kubectl apply -f "C:\Users\Sara Heine\Desktop\RockSolidRemedies\k8s-config\product-microservice.yaml"

echo All Kubernetes resources have been applied.
pause
