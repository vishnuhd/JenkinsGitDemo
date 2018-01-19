#Deployment script for jenkins deployment

#Backing up
Move-Item -Path "D:\prod\Jenkins\Default\*" -Destination "D:\prod\Jenkins\Backup\" -Force

#Copying new files
Copy-Item -Path "D:\Jenkins\JenkinsHome\workspace\PipelineDemo\JenkinsGitDemo\bin\Release\JenkinsGitDemo.exe" -Destination "D:\prod\Jenkins\Default\"

Write-Host "Copied !!"
