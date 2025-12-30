pipeline {
    agent any 

    environment {
        ENV = env.BRANCH_NAME
        TF_WORKDIR = env.BRANCH_NAME
         
    }
}

stages {
    stage ('checkout') {
        steps {
            git branch : "${env.Branch}", url: 'https://github.com/vignesh7323/Terraform_pipeline_jenkins.git'
    
        }

    }

}

    stage ('Terraform inir') {
        steps {
            dir ("${TF_WORKDIR}") {
                sh 'terraform init'
            }


        }
    }

    stage ('Terraform plan') {
        steps {
            dir ("${TF_WORKDIR}") {
                sh 'terraform plan -o out=tfplan'
                sh 'terraform show -no-color tfplan > tfplan.txt'
                sh 'cat tfplan.txt'
        }
    }
    }

    stage ('Approval') {
        steps {
            input message :"Approve this plan ?", ok: 'Deploy' 
        }
    }

    stage ('Terraform apply') {
        steps {
            dir ("$TF_WORKDIR") {
                sh 'terraform apply tfplan'
            }
        }

    }


