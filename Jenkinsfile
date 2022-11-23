node{
    stage('code checkout'){
        git 'https://github.com/Sanketar/addressbook-demo.git'
    }
    
    stage('clean.. compile... test... package...'){
        sh 'mvn clean package'
    }
    
    stage('test'){
       junit allowEmptyResults: true, skipMarkingBuildUnstable: true, skipOldReports: true, skipPublishingChecks: true, testResults: '**/*.xml'   
    }
          
    stage('deploy to tomcat'){
        deploy adapters: [tomcat9(credentialsId: 'tomcat-creds', path: '', url: 'http://3.109.143.102:8085/')], contextPath: 'addressbook-2', war: '**/*.war'
    }
}
