pipeline {
    agent { label 'master' }
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
	    
	stage('Push Package') {
            steps {
                //sh 'mvn -B -DskipTests clean package'
                sh 'mvn deploy -s settings.xml'
            }
        }//end build
	    
        stage('Test') {
            steps {
                sh 'mvn test'
                junit 'target/surefire-reports/*.xml'
            }
        }//end of test
	    
	//stage('Sonar Analysis') {
            //steps {
                //withSonarQubeEnv('SonarQube') {
                //sh 'mvn sonar:sonar' 
		//sh 'mvn sonar:sonar \
  //-Dsonar.host.url=http://localhost:9000 \
  //-Dsonar.login=devops'
              //}
            //}
        //}//end of sonar
	    
	//stage("Sonar Quality gate") {
            //steps {
                //waitForQualityGate abortPipeline: true
            //}
        //}//end of Sonar Quality gate
      }//end stages
    }//end pipeline
