pipeline {
    agent any

    environment {
        ARM_CLIENT_ID = "cd76c8af-1d83-483d-a2cd-b6fdcd337914"
        ARM_CLIENT_SECRET = "1cU8Q~oTGGFkn3kC_f3SvQspkKEbg44SKMFzZap9"
        ARM_SUBSCRIPTION_ID = 'b5661abd-61e4-496b-bce5-4f1f2ff7f878'
        ARM_TENANT_ID = "870011b7-8a7a-474a-b5ee-e95e62bb757d"
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

