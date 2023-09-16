pipeline {
	agent{
	label 'Mens-slave'
	}
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/grras/slave-data/apache-maven-3.9.4/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/CICD.war /home/grras/slave-data/apache-tomcat-9.0.79/webapps'
			}}	
}}
