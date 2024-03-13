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
			  sh 'JAVA_HOME=/home/grras/appfiles/jdk-11.0.20/bin'
			  sh '/home/grras/appfiles/apache-maven-3.9.4/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/CICD.war /home/grras/appfiles/apache-tomcat-9.0.79/webapps'
			}}	
}}
