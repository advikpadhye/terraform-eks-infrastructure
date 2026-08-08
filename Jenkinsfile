pipeline {

  agent any 

  environment {
     AWS_DEFAULT_REGION = 'ap-south-1'

     }

  stages {
    stage ("git checkout") {

      steps {
        checkout scm
	}
   }


    stage ("verify the terraform version") {
      steps {
        sh "terraform version"
	}
     }



    stage ("initializing the Terraform") {
      steps {
          sh "terraform init"

	  }
   }



    stage ("formating the terraform code") {
      steps {
	    sh "terraform fmt"
	    }
	}



    stage ("validating the terraform code") {
      steps {
        sh "terraform validate"
	}

    }


    stage ("terraform plan") {
      steps {
        sh "terraform plan -var-file=terraform.tfvars -out=tfplan"
	}
      }	

  }
}








