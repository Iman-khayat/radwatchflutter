 
pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('build') {
            steps {
                echo 'build completed'
            }
        }
         stage('test') {
            steps {
                echo 'testing completed'
            }
        }
         stage('deploy') {
            steps {
                echo 'deployment completed'
            }
        }
    }
}
