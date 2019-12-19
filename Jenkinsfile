
def PROJECT_NAME
def DESCRIPTION
def DISPLAY_NAME

pipeline {
    agent any 
    environment {
	    	PROJECT_NAME='DEVOPS'
		DESCRIPTION='DEVOPS PROJECT'
		DISPLAY_NAME='DEVOPS PROJECT'
    }
    stages {
        stage('Initialize'){
            steps {
                sh 'chmod -R 777 ${WORKSPACE}'
            }
        }
	/*	stage('Clean'){
            steps {
                sh '${WORKSPACE}/Cleanup.sh'
        	}
        } 
    */
		stage('Build'){
            steps {
                sh '${WORKSPACE}/Build.sh'
            }
        }
		stage('Deploy'){
            steps {
                sh '${WORKSPACE}/Deploy.sh'
            }
        }
    }
}
