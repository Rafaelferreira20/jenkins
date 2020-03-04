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
            sh "chmod +x build/alpine.sh"
            sh "cd build/"
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