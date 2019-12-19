
def PROJECT_NAME
def DESCRIPTION
def DISPLAY_NAME

pipeline {
    agent any 
    environment {
	    	PROJECT_NAME='devops'
		DESCRIPTION='devops project'
		DISPLAY_NAME='devops project'
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
