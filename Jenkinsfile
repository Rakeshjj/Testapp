pipeline{
    agent any
       
    stages{
        stage('Clone Repository'){
        steps{
            git 'https://github.com/Rakeshjj/Testapp'
        }
        }
          stage('Build Docker Image'){
        steps{
            script{
             sh ' /var/lib/docker build -t angular-image .'
            }
        }
        }
          stage('Run Docker Container'){
            steps{
            script{
             sh ' /var/lib/docker run -p 8090:80 angular-image'
              }
            }
        }
    }
}
