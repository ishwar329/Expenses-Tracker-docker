@Library("shared") _
pipeline{
    agent any
    
    stages{
        stage("code clone"){
            steps{
                script{
                   clone("https://github.com/ishwar329/Expenses-Tracker-docker.git","main")
                }
                
            }
        }
        stage("Build"){
            steps{
                script{
                    docker_build("expenses","latest","ishwargosavi")
                }
            }
        }
        stage("Push to docker hub"){
            steps{
                script{
                docker_push("expenses","latest","ishwargosavi")
                 }
            }
        }
        stage("Deploy"){
            steps{
                script{
                    docker_compose()
                }
            }
        }
  }
}
