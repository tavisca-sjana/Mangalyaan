pipeline
{
    agent any

    parameters
    {
        choice(name:'AppType',choices:['Console App','Web App'],description:'Type of app')
        string(name:'UserName',defaultValue:'',description:'Enter Github UserName')
        string(name:'Repository',defaultValue:'',description:'Enter Repository Name')
        string(name:'Branch',defaultValue:'',description:'Enter branch name')
    }

    stages
    {
        stage('Just a step')
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
                checkout([$class: 'Git', branches: [[name: "*/${params.Branch}"]],
                    userRemoteConfigs: [[url: "http://git-server/${params.UserName}/${params.Repository}.git"]]])
                echo "The application type is ${params.AppType}"
                echo "Clone Success"
            }
        }
    }
}