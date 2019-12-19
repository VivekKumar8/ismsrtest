
def PROJECT_NAME
def DESCRIPTION
def DISPLAY_NAME

pipeline {
    agent any 

    stages {
        stage('Initialize'){
            steps {
                sh 'chmod -R 777 ${WORKSPACE}'
		    script {
		PROJECT_NAME='DEVOPS'
		DESCRIPTION='DEVOPS PROJECT'
		DISPLAY_NAME='DEVOPS PROJECT'
		    }
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
