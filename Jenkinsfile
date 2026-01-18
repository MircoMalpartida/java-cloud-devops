pipeline {
  agent { label 'docker' }

  stages {
    stage('Build Image') {
      steps {
        sh 'docker build -t mircodocker14/java-cloud-devops:1.0 .'
      }
    }

    stage('Push Image') {
      steps {
        sh 'docker push mircodocker14/java-cloud-devops:1.0'
      }
    }
  }
}

