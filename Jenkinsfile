pipeline {
	agent any
	options {
    skipDefaultCheckout(true)
	}
	stages {
		stage ('Checkout Stage'){
			steps{
				echo 'Checkout Stage'
				checkout scm
		}
		}
		stage ('Build Stage'){
			steps{
				echo 'Build Stage'
				bat "\"${tool 'Version 4.0'}\\MSBuild.exe\" JenkinsGitDemo.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
			}
		}
		stage ('Run Stage'){
			steps{
				echo 'Run Stage'
				bat 'D:\\Jenkins\\JenkinsHome\\workspace\\PipelineDemo\\JenkinsGitDemo\\bin\\Debug\\JenkinsGitDemo.exe'
			}			
		}
		stage ('Deploy Stage'){
			steps{
				echo 'Deploy Stage'
				powershell 'D:\\Jenkins\\JenkinsHome\\workspace\\PipelineDemo\\JenkinsDeploy.ps1'
			}			
		}
	}
}
