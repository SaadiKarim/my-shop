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
                sh './vendor/bin/phpunit tests/Unit'
            }
        }
        
    }
    post {
        always {
            archiveArtifacts artifacts: 'vendor/', fingerprint: true
        }
    }
}