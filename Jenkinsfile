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
                message "Enter github link?"
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }
            steps
            {
                echo "hi ${input.PERSON}"
                echo "Hello World with process ${params.PROCESS}"
            }
        }
    }
}