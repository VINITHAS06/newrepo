pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        
        stage('Checkout') {
            steps {
             sh 'rm -rf newrepo'
             sh 'git clone https://github.com/VINITHAS06/newrepo.git'
            }
        }
        
        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage ('sonar') {
            steps {
                sh 'mvn sonar:sonar -Dsonar.host.url=http://192.168.1.6:9000'
            }
        }
}
            
    post {
            always {
               sh 'echo "hello"'
            }
        }
}
