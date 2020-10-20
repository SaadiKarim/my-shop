pipeline {
    agent { 
         dockerfile {
            filename 'Dockerfile.test'
        }
     }
    stages {
        stage('unitTest') {
            steps {
                sh './vendor/bin/phpunit --version'
            }
        }
    }
}