pipeline {
    agent any
    environment {

        AWS_ACCESS_KEY_ID = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    
    }
    stages {
        stage(checkout) {
            steps {
                git branch: 'master', url: 'https://github.com/Himanshu-Toshniwal/terraform-jenkins-demo.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply "tfplan"'
            }
        }
    }
}