pipeline {
	agent any
	stages {
		stage ('Checkout Stage'){
			steps{
				checkout scm
		}
		}
		stage ('Build Stage'){
			steps{
				bat "\"${tool 'Version 4.0'}\\MSBuild.exe\" JenkinsGitDemo.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
			}
		}
		stage ('Run Stage'){
			steps{
				bat 'D:\\Jenkins\\JenkinsHome\\workspace\\PipelineDemo\\JenkinsGitDemo\\bin\\Debug\\JenkinsGitDemo.exe'
			}			
		}
	}
}