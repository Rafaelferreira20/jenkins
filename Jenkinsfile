pipeline {
   agent {
      docker {
         image "ruby:alpine"
         args "--network=webninja -u root --privileged"
      }
   }
   stages {
      stage("Build") {
         steps {
            sh "bundle install"
            sh "chmod +x build/alpine.sh"
            sh "./build/alpine.sh"
         }
      }
      stage("Tests"){
         steps {
            sh "bundle exec cucumber -p ci"
         }
      }
   }
}