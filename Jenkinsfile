pipeline {
	agent any 
	
	triggers {
  pollSCM '* * * * *'
}
	parameters {
  choice choices: ['DEV', 'QA', 'UAT'], name: 'ENVIRONMENT'
}
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/swapnil/Documents/DevOps-Software/apache-maven-3.9.4/bin/mvn install'
	                 }}
		stage('Deployment'){
		   steps {
		if [ $ENVIRONMENT = "QA" ];then
        		sshpass -p "dev" scp target/CICD.war grras@172.17.0.2:/home/grras/appfiles/apache-tomcat-9.0.79/webapps
		elif  [ $ENVIRONMENT = "UAT" ];then
         		sh 'cp target/CICD.war /home/swapnil/Documents/DevOps-Software/apache-tomcat-9.0.79/webapps'
			sh 'echo "deployment has been done!"'
		fi
			}}	
}}
