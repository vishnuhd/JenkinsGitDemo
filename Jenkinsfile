pipeline {
	agent any
	options {
    skipDefaultCheckout(true)
	}
	stages {
		stage ('Checkout Stage'){
			steps{
				echo 'Checkout Stage'
				git branch: 'dev', url: 'https://github.com/vishnuhd/JenkinsGitDemo.git'
				sh 'ls -al'
		}
		}
		stage ('Build Stage'){
			steps{
				echo 'Build Stage'
				sh 'ls -al'
				sh label: '', script: '''
				ls -al
				./script.sh
				'''
			}
		}
	}
}
