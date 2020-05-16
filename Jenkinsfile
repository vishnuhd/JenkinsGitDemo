pipeline {
	agent any
	options {
    skipDefaultCheckout(true)
	}
	stages {
		stage ('Checkout Stage'){
			steps{
				echo '##############'
				echo 'Checkout Stage'
				echo '##############'
				git branch: 'dev', url: 'https://github.com/vishnuhd/JenkinsGitDemo.git'
				sh 'ls -al'
				sh 'pwd'
		}
		}
		stage ('Build Stage'){
			steps{
				echo '###########'
				echo 'Build Stage'
				echo '###########'
				sh label: '', script: '''
				ls -al
				pwd
				./script.sh
				'''
			}
		}
	}
}
