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
             bat ' C:/Program Files/Docker/Docker/resources/bin/docker.exe build -t angular-image .'
            }
          }
        }
          stage('Run Docker Container'){
            steps{
            script{
             bat ' C:/Program Files/Docker/Docker/resources/bin/docker.exe run -p 8090:80 angular-image'
              }
            }
        }
    }
}
