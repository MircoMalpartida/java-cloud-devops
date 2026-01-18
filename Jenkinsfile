pipeline {
  agent any

  stages {

    stage('Docker Build') {
      steps {
        sh 'docker build -t mircodocker14/java-cloud-devops:1.0 .'
      }
    }

    stage('Docker Push') {
      steps {
        withCredentials([usernamePassword(
          credentialsId: 'dockerhub-creds',
          usernameVariable: 'DOCKER_USER',
          passwordVariable: 'DOCKER_PASS'
        )]) {
          sh '''
            echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
            docker push mircodocker14/java-cloud-devops:1.0
          '''
        }
      }
    }
  }
}




