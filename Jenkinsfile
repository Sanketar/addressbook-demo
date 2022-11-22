node{
    stage('code checkout'){
        git 'https://github.com/shubhamkushwah123/addressbook-demo.git'
    }
    
    stage('clean.. compile... test... package...'){
        sh 'mvn clean package'
    }
    
    stage('test'){
       junit allowEmptyResults: true, skipMarkingBuildUnstable: true, skipOldReports: true, skipPublishingChecks: true, testResults: '**/*.xml'   
    }
          
    stage('deploy to tomcat'){
        deploy adapters: [tomcat9(credentialsId: 'tomcat-creds', path: '', url: 'http://43.205.242.132:8085/')], contextPath: 'addressbook-2', war: '**/*.war'
    }
}
