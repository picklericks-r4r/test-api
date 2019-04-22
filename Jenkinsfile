pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing, 123..'
            }
        }
        stage("Upload"){
            when { branch "master" } 
            steps {
                sh 'make deploy'
            }
        }
        stage("Deploy"){
            when { branch "master" }
            steps {
                echo 'DEPLOYING'
            }
        }
    }
    
}