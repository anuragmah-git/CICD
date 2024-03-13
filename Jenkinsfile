pipeline {
	agent{
	label 'mens-slave'
	}
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/guru/slaveDD2/apache-maven-3.9.0/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/flipkart.war /home/grras/appfiles/apache-tomcat-9.0.79/webapps'
			}}	
}}
