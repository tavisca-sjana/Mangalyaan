pipeline
{
    agent any

    parameters
    {
        choice(name:'Process',choices:['build','test','deploy'],description:'This is name of process')
    }

    stages
    {
        stage('Just a step')
        {
            steps
            {
                echo "Hello World with process ${params.Process}"
            }
        }
    }
}