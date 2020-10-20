pipeline {
    agent { docker { image 'phpunit/phpunit' } }
    stages {
        stage('unitTest') {
            steps {
                sh 'phpunit --version'
            }
        }
    }
}