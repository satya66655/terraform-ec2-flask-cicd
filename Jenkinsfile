pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "us-east-1"
    }

    stages {
        stage('Clone Terraform Repo') {
            steps {
                git url: 'https://github.com/satya66655/terraform-ec2-flask-cicd.git', branch: 'main'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Show Public IP') {
            steps {
                sh 'terraform output instance_public_ip'
            }
        }
    }
}

