node{
	stage('Git-Checkout'){
	
		echo "Checking out from Git Repo";
		git 'https://github.com/Niha-21/tycompwebapp.git'
		
	}
        stage('Mvn Package'){
		def mvnHome = tool name: 'Maven', type: 'maven'
		def mvnCMD = "${mvnHome}/bin/mvn"
		bat "${mvnCMD} clean package"	
	}
	stage('Build Docker Image'){
		bat "docker build -t nihak/webapp:${env.BUILD_NUMBER}"
	}
        
}
