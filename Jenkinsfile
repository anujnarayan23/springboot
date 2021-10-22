pipeline {
    agent any
	tools {
    	   maven '3.6.3'
	   jdk '1.8'
        }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
                //sh 'mvn deploy -s settings.xml'
            }
        }//end build
	    
        stage('Test') {
            steps {
                sh 'mvn test'
                junit 'target/surefire-reports/*.xml'
            }
        }//end of test	
      }//end stages
    }//end pipeline
