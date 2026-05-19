
pipeline {
    agent any

    stages {
        stage('Clone Terraform Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/RiyaDominic/terraform-jenkins-riya.git'
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
    }
}
