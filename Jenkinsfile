// Author: Hemant Rumde
// Total 5 VMs are configured to explore Jenkins (docker1, docker2, docker3, docker4)
// Jenkins is installed and configured on docker1 which is a master
// docker2,docker3,docker4 are configured as nodes ( Jenkins is not installed on these VMs)
// "jenkins" user id is created on node servers
// Refer Jenkins manage node to add VMs as nodes

pipeline {
    agent none
        stages {
                stage("Source codes"){
                    agent {
                        node {
                            // Execute this stage on server docker2 ( label for this node server is docker2)
                            label 'docker2'
                            checkout scm
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
