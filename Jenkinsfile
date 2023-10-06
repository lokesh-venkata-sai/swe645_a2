//This file will create a CI/CD pipeline for building and deploying the dcoker image to k8 cluster using Github as source control version.

pipeline{
    
    environment {
	    	registry = "lokeshmamidi99/swe645_a2"
        registryCredential = 'docker'
        def dateTag = new Date().format("yyyyMMdd-HHmmss")
        // def dateTag = "latest"
	}
agent any
  stages{
    stage('Building war') {
            steps {
                script {
                    sh 'rm -rf *.war'
                    sh 'jar -cvf project1_645.war -C src/main/webapp .'
                    docker.withRegistry('',registryCredential){
                      def img = docker.build('lokeshmamidi99/swe645_a2:'+ dateTag)
                   }
                    
               }
            }
        }
    stage('Pushing latest code to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('',registryCredential) {
                        def image = docker.build('lokeshmamidi99/swe645_a2:'+ dateTag, '. --no-cache')
                        docker.withRegistry('',registryCredential) {
                            image.push()
                        }
                    }
                }
            }
        }
     stage('Deploying to single node in Rancher and load Balancer') {
         steps {
            script{
               sh 'kubectl set image deployment/deploy1 container-0=lokeshmamidi99/swe645_a2:'+dateTag
               sh 'kubectl set image deployment/deploy-lb container-0=lokeshmamidi99/swe645_a2:'+dateTag
            }
         }
      }
  }
 
  post {
	  always {
			sh 'docker logout'
		}
	}    
}