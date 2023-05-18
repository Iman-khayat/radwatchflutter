pipeline {
    agent any
    triggers{
    PollSCM('1****')
    }
    stages {
        stage('Build') {
            agent any
            steps {
                echo'Building completed'
              }
        stage('deploy'){
            echo'deplying completed'
        }    
        }
    }
}
