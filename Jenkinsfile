node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }
	stage('compile'){
	
	sh '''
	  mvn compile
	'''
	
	
	}
	
	stage('package'){
	
	sh '''
	  mvn package
	'''
	
	
	}
       stage('SonarCoverageResults'){
	
	sh '''
	  mvn clean verify sonar:sonar \
  -Dsonar.projectKey=mydynamicapp \
  -Dsonar.projectName='mydynamicapp' \
  -Dsonar.host.url=http://3.95.152.220:9000 \
  -Dsonar.token=sqp_7d2911ba72b0dbc2d00436b69963d0f3ed0fd67f
	'''
	
	
	}
	/*stage('SendingToNexus'){
	
	sh '''
	  
          curl -v -u admin:admin123 --upload-file /var/lib/jenkins/workspace/myproject/target/*.war  http://3.80.54.111:8081/nexus/content/repositories/mycentral
	'''
	
	
	}*/
    stage('DockerBuild'){
	
	app = docker.build("mannam786/mydynamicapp")
	
	
	}
       stage('DockerPush'){
	
	docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
      
             }
	
	
	}
	
   
  }
