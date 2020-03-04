pipeline {
   agent {
      docker {
         image "ruby"
         args "--network=webninja -u root --privileged"
      }
   }
   stages {
      stage("Build") {
         steps {
            sh "chmod +x build/alpine.sh"
            sh "docker exec -i -t ruby bash"
            sh "./build/alpine.sh"
            sh "bundle install"
         }
      }
      stage("Tests"){
         steps {
            sh "bundle exec cucumber -p ci"
         }
      }
   }
}
