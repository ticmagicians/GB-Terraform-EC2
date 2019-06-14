#!groovy

node {
   
Environment Variables
env.instance_count = "${instance_count}"
echo "${env.instance_count}"
env.plan = "${plan}"
env.Wipe_Workspace = "${Wipe_Workspace}"
  
withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'green_berets', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]){
   
  stage ('CleanUp') {
      if (env.Wipe_Workspace == 'YES'){ 
         deleteDir()
         cleanWs()
      }
  }
      
  stage ('Checkout') {
      git 'https://github.com/ticmagicians/GB-Terraform-EC2'
  }

  stage ('Terraform Plan') {
      env.instance_count = "${instance_count}"
      echo "${env.instance_count}"
      echo "${env.tag_name}"
      sh 'terraform init'
      sh "terraform plan -var instance_count=${env.instance_count}"
  }


  stage ('Terraform Apply') {
    
      if (env.plan == 'apply'){  
          sh "terraform apply  -var instance_count=${env.instance_count}  -auto-approve"
      }
  }
      
   stage ('Terraform destroy') {
      
      if (env.plan == 'destroy'){ 
           sh "terraform destroy  -var instance_count=${env.instance_count} -auto-approve"
      }
      
  }

  }

}
