pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build --no-cache -t dragas/nikola .'
      }
    }

    stage('Push to DockerHub') {
      steps {
        sh 'docker push dragas/nikola '
      }
    }

    stage('Cleanup') {
      steps {
        sh 'yes | docker volume prune'
      }
    }

  }
}