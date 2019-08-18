pipeline
{
    agent any

    parameters
    {
        choice(name:'PROCESS',choices:['build','test','deploy'],description:'This is name of process')
        choice(name:'AppType',choices:['Console App','Web App'],description:'Type of app')
        string(name:'Usertype',defaultValue:'Admin',description:'Type of user')
    }

    stages
    {
        stage('Just a step')
        {

            input {
                message "Enter github username and repo"
                parameters {
                    string(name: 'USERNAME', defaultValue:'lol', description: 'eg.SoumyadeepJana')
                    string(name:'REPO',defaultValue:'lol1',description:'eg. ShoppingCart')
                }

               
            }
           
            steps
            {
                git "https://github.com/${USERNAME}/${REPO}.git"
                echo "Hello World with process ${params.PROCESS}"
                echo "The application type is ${params.AppType}"
                echo "Clone Success"
            }
        }
    }
}