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
            sh "cd build/"
            sh "chmod +x alpine.sh"
            sh "./alpine.sh"
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