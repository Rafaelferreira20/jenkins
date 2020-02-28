pipeline {
   agent {
      docker {
         image "ruby"
      }
   }
   stages {
      stage("Build") {
         steps {
           sh "bundle install"
           sh "docker start pgdb"
           sh "docker start pgadmin"
           sh "docker start nflix-api-users"
           sh "docker start nflix-api-movies"
           sh "docker start nflix-api-gateway"
           sh "docker start nflix-web"
         }
      }
      stage("Tests"){
          steps {
            sh "echo 'simulando testes automatizados' "
          }
      }
   }
}