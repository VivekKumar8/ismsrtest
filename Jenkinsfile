
def PROJECT_NAME=DEVOPS
def DESCRIPTION=DEVOPS PROJECT
def DISPLAY_NAME=DEVOPS PROJECT

pipeline {
    agent any 

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
