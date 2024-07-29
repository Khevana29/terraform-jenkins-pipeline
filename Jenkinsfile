pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Khevana29/terraform-jenkins-pipeline.git', credentialsId: 'github-credentials'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=plan.out'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply plan.out'
            }
        }
    }
}


