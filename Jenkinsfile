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
                bat 'cd C:\ProgramData\Jenkins\.jenkins\workspace\azure-pipeline && terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                bat 'cd C:\ProgramData\Jenkins\.jenkins\workspace\azure-pipeline && terraform plan -out=plan.out'
            }
        }
        stage('Terraform Apply') {
            steps {
                bat 'cd C:\ProgramData\Jenkins\.jenkins\workspace\azure-pipeline && terraform apply plan.out'
            }
        }
    }
}


