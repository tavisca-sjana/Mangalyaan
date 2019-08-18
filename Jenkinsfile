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

            input {
                message "Should we continue?"
                ok "Yes, we should."
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
                }
            }
            steps
            {
                echo "Hello World with process ${params.Process}"
            }
        }
    }
}