# Run & Test application locally

- Updated backend Dockerfile with missing commands
- Build backend container: `docker build -t fueled-test-backend:latest .`
- Run backend container: `docker run --name container1 --network my-network -p 9000:8080 fueled-test-backend:latest`.
- Build frontend container: `docker build -t fueled-test-frontend:latest .`
- Run frontend container: `docker run --name container2 --network my-network -e API_BASE_URL=http://container1:8080 -p 3000:3000 fueled-test-frontend:latest`.

Output: Application working properly in local machine docker environment

# Publish Docker images

```
- docker login
- docker tag fueled-test-frontend:latest joyce237/fueled-frontend:latest
- docker push joyce237/fueled-frontend:latest
- docker tag fueled-test-backend:latest joyce237/fueled-test-backend:latest
- docker push joyce237/fueled-test-backend:latest
```

# Terraform

Created terraform configuration for EKS Cluster `terraform apply`

- Created IAM role for EKS and attached policies
- Created Cluster with 2 subnets
- Created IAM role for worker nodes and attached policies
- Created worker node group
- Added monitoring with cloudwatch observability insight

-- via eksctl
`eksctl create cluster --name cluster-demo --version 1.27 --region us-east-1 --nodegroup-name standard-workers --node-type t3.micro --nodes 2 --nodes-min 1 --nodes-max 2 --managed`

# Connecting to Cluster

- Connect with cluster `aws eks --region us-east-1 update-kubeconfig --name my-demo-eks-cluster`
- Created namespaces
  `kubectl create namespace dev ; kubectl create namespace stage ; kubectl create namespace prod`

# Helm

- Created helm chart with command `helm create <chartname>`
- Added deployment, service and HorizontalPodAutoscaling for both frontend and backend
- Added dev, stage and prod values file
- Check template `helm template dev-release -f ./helm/values-dev.yaml ./helm`
- Install helm chart for dev `helm upgrade dev-release --install ./helm --values ./helm/values-dev.yaml --namespace dev`
- Install helm chart for stage `helm update stage-release --install ./helm --values ./helm/values-stage.yaml --namespace stage`
- Install helm chart for prod `helm update prod-release --install ./helm --values ./helm/values-prod.yaml --namespace prod`

# Check loadbalancer service

- For dev `kubectl get svc -n dev`
- Copy LoadBalancer url and paste in browser

## Finish
