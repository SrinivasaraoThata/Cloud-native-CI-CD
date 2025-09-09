# Cloud-native-CI-CD
This project demonstrates an end-to-end CI/CD pipeline for a cloud-native application using Jenkins, Docker, and Kubernetes.
It covers the full workflow: Build → Test → Dockerize → Push to Registry → Deploy to Kubernetes.

📂 Project Structure
cloud-native-ci-cd/
│── app/                 # Sample Python app
│   └── app.py
│── Jenkinsfile          # CI/CD pipeline definition
│── Dockerfile           # Container image
│── k8s/
│   ├── deployment.yaml  # Kubernetes Deployment manifest
│   └── service.yaml     # Kubernetes Service manifest
└── README.md

⚙️ Workflow Overview

The developer pushes code to GitHub.

Jenkins Pipeline triggers automatically.

Jenkins stages:

Build & Test → Runs Python unit tests.

Docker Build & Push → Builds an image and pushes it to Docker Hub.

Deploy → Applies Kubernetes manifests to the cluster.

Application is live on Kubernetes with rolling updates.

🛠️ Tech Stack

CI/CD: Jenkins (Pipeline as Code)

Containers: Docker

Orchestration: Kubernetes (kubectl)

Language: Python (sample app)

▶️ Steps to Run
1. Run Locally with Docker
docker build -t cloud-native-app.
docker run --rm -p 5000:5000 cloud-native-app

2. Deploy to Kubernetes
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods
kubectl get svc

📊 Jenkins Pipeline (High-Level)

Stage 1: Build & Test → Run Python tests.

Stage 2: Docker Build & Push → Build and push image to DockerHub.

Stage 3: Deploy → Deploy to Kubernetes cluster.

🔮 Future Enhancements

Add Helm charts for templated deployments.

Add SonarQube for code quality checks.

Integrate Prometheus + Grafana for monitoring.
