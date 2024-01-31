pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('shyamdev09-docker')
    }
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/shyamdev09/nodejs-demo.git'
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t myjar .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push myjar'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}

