pipeline
{
    agent docker

    parameters
    {
        choice(name:'AppType',choices:['Console App','Web App'],description:'Type of app')
        string(name:'UserName',defaultValue:'',description:'Enter Github UserName')
        string(name:'Repository',defaultValue:'',description:'Enter Repository Name')
        string(name:'Branch',defaultValue:'',description:'Enter branch name')
    }

   

    stages
    {
        stage('Git-Checkout')
        {

            // input {
            //     message "Enter github username and repo"
            //     parameters {
            //         string(name: 'USERNAME', defaultValue:'lol', description: 'eg.SoumyadeepJana')
            //         string(name:'REPO',defaultValue:'lol1',description:'eg. ShoppingCart')
            //     }

               
            // }
           
            steps
            {
                //git "https://github.com/${params.UserName}/${params.Repository}.git//${params.Branch}"
                //checkout([$class: 'GitSCM', branches: [[name: "*/${params.Branch}"]],
                    //userRemoteConfigs: [[url: "http://github/${params.UserName}/${params.Repository}.git"]]])
                git branch: "${params.Branch}", url: "https://github.com/${params.UserName}/${params.Repository}.git"
                echo "The application type is ${params.AppType}"
                echo "Clone Success"
            }
        }

        stage('Build')
        {
            steps
            {
                echo "Building Project"
                bat "dotnet build ${params.Repository}.sln --configuration Release"
                echo "Build success"
            }
        }

        stage('Test')
        {
            steps
            {
                echo "Test"
            }
        }

        stage('Publish-Output')
        {
            steps
            {
                echo "Publish Start"
                bat "dotnet publish ${params.Repository}.sln"
                echo "Publish Success"
            }
        }

        stage('Docker-Image-Generation')
        {
            steps
            {
                echo "Starting Docker Image generation"
                bat "docker build --tag=mangalyaan ."
                echo "Docker Image Generation Successful"
            }
        }

        stage('Docker Push')
        {
            steps
            {
                echo "Pushing image to docker hub"
                // docker.withRegistry(credentialsId: 'docker-hub-credentials', url: 'https://registry.hub.docker.com')
                // {
                //     sh "docker tag mangalyaan /my_image"
                // }
               
                    script{
                     docker.withRegistry('docker-hub-credentials','')
                        {
                            //def customImage = docker.build("mangalyaan:${env.BUILD_ID}")
                            //customImage.push()
                            powershell "docker tag mangalyaan soumyadcoder/mangalyaan"
                            bat "docker push soumyadcoder/mangalyaan"
                            // sh 'docker push brightbox/terraform:latest'
                            // sh 'docker push brightbox/cli:latest'
                            echo "Pushed Success"
                        }
                    }
                    // sh "docker tag mangalyaan $username/mangalyaan"
                    // sh "docker push $username/mangalyaan"
                    // echo "Pushed Success"
                
            }
        }
    }
}