pipeline{
    agent any
    tools{
        maven 'M3'
    }
    stages{
        stage('Clone project'){
            steps{
                git 'https://github.com/prasad1598/Docker_jenkins.git'
            }
        }
        stage('Build the image'){
            steps{
                sh 'docker build -t $img .'
            }
        }
        stage('Create Container'){
            steps{
                sh 'docker stop webapp'
                sh 'docker rm webapp'
                sh 'docker run -itd --name webapp -p 80:80 $img'
            }
        }
    }
}
