pipeline {
    agent none
        stages {
                stage("Source codes"){
                    agent {
                        node {
                            // Execute this stage on server docker2 ( label for this node server is docker2)
                            label 'docker2'
                        }
                    }
                    steps {
                        echo "Clone source codes from git repository"
                        sh "hostname"
                    }
                }
                stage("Check resources"){
                    agent {
                        node {
                            // Execute this stage on server docker3 ( label for this node server is docker3)
                            label 'docker3'
                        }
                    }
                    steps {
                        // Run multiple commands/scripts on node server docker3
                        sh """
                           whoami
                           pwd
                           date
                           cal 
                           cal 2018
                        """
                    }
                }
                stage("Linux commands"){
                    agent {
                        node {
                            // Execute this stage on server docker4 ( label for this node server is docker4)
                            label 'docker4'
                        }
                    }
                    steps {
                        // Run multiple commands/scripts on node server docker4
                        sh('find /usr -type f -exec ls -ld {} \\;')
                    }
                }
        }
}
