node("jenkins-slave"){
    stage('git'){
        git branch: 'dev-0.13.0', credentialsId:'brianzhangrong', url:'https://github.com/WeBankFinTech/Linkis.git'
    }

    stage('maven') {
       sh label: '', script: '/home/jenkins/agent/apache-maven-3.6.3/bin/mvn clean  package -f gateway/gateway-ujes-support/pom.xml'
    }
   
    stage('docker build') {
         sh label: '', script: 'docker build -t 10.206.0.5/library/linkis:linkis-gateway  gateway/gateway-ujes-support/.'
    }
 
    stage('docker login') {
        sh label: '', script:'cat /opt/password/password |docker login --username=admin --password-stdin 10.206.0.5'
    }
     stage('docker push') {
        sh label: '', script:'docker push 10.206.0.5/library/linkis:linkis-gateway'
    }
    stage('k8s deploy'){
        echo 'deploy success'
    }
    
}
