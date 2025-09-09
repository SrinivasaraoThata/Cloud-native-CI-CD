pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds') // Jenkins credential ID
        DOCKER_IMAGE = "your-dockerhub-username/cloud-native-app"
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building application...'
                sh 'python3 -m py_compile app/app.py'
            }
        }

        stage('Docker Build & Push') {
            steps {
                script {
                    sh '''
                        docker build -t $DOCKER_IMAGE:latest .
                        echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
                        docker push $DOCKER_IMAGE:latest
                    '''
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yaml'
                sh 'kubectl apply -f k8s/service.yaml'
            }
        }
    }
}
