pipeline {
    agent { dockerfile true }
    stages {
        stage('unitTest') {
            steps {
                sh './vendor/bin/phpunit --version'
            }
        }
    }
}