pipeline {
	agent any
	
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
			sh 'cp target/CICD.war /home/swapnil/Documents/DevOps-Software/apache-tomcat-9.0.79/webapps'
			}}
			stage('Docker build'){
		    steps {
			sh 'docker build -t swapnilhub/pipelineimage2 .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=container-pipeline1.1 swapnilhub/pipelineimage2 /bin/bash'
			}}
			stage('Slack NOtification'){
		    steps {
			slackSend baseUrl: 'https://hooks.slack.com/services/', channel: '#slack-notification', color: 'good', message: 'Welcome to Jenkins!', teamDomain: 'devops', tokenCredentialId: 'slack-notifiy'
			}}
				
}}
