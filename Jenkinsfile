pipeline {
    agent any

    environment {
        ARM_CLIENT_ID = credentials('azure-sp')
        ARM_CLIENT_SECRET = credentials('azure-sp')
        ARM_SUBSCRIPTION_ID = 'b5661abd-61e4-496b-bce5-4f1f2ff7f878'
        ARM_TENANT_ID = credentials('azure-sp')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Khevana29/terraform-jenkins-pipeline.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -input=false tfplan'
            }
        }
    }
}

