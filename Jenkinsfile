pipeline
{
    agent any

    parameters
    {
        choice(name:'PROCESS',choices:['build','test','deploy'],description:'This is name of process')
    }

    stages
    {
        stage('Just a step')
        {

            input {
                message "Enter github username"
                parameters {
                    string(name: 'USERNAME', defaultValue: none, description: 'eg.SoumyadeepJana')
                }
            }
            input
            {
                message "Enter repo name"
                parameters
                {
                    string(name:'REPO',defaultValue:none,description:'eg. ShoppingCart')
                }
            }
            steps
            {
                git "https://github.com/${USERNAME}/${REPO}.git"
                echo "Hello World with process ${params.PROCESS}"
                echo "Clone Success"
            }
        }
    }
}