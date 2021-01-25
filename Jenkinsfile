properties([pipelineTriggers([githubPush()])])

pipeline {

    agent {
        docker {
            image 'hashicorp/terraform'
            args '--entrypoint='
        }
    }
    options {
        withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'AWS_Creds', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])

    }

    environment {
        AWS_REGION = "eu-west-3"
    }
    stages {
        stage('Launch Playbook') {
            steps {
                ansible-playbook -i ansible_client/playbook.yml
	    }
        }
    }
}
