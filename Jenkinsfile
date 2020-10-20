pipeline {
    agent { 
         dockerfile {
            filename 'Dockerfile.test'
        }
    }
    stages {
        stage('install') {
            steps {
                sh 'composer install -n'
            }
        }
        stage('unitTest') {
            steps {
                sh './vendor/bin/phpunit --version'
            }
        }
    }
}