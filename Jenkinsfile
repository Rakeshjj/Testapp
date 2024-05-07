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
             sh '/usr/local/bin/docker build -t angular-image .'
            }
        }
        }
          stage('Run Docker Container'){
            steps{
            script{
             sh '/usr/local/bin/docker run -p 8090:80 angular-image'
              }
            }
        }
    }
}
