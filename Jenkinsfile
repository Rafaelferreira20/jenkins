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
            sh "docker build"
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