pipeline {
    agent any

    environment {
        SCANNER_HOME = tool 'sonar-scanner'
        DOCKER_IMAGE = 'netflix-clone'
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/taleledhawal2004-ship-it/netflix-clone.git'
            }
        }

        stage('Verify Tools') {
            steps {
                sh 'git --version'
                sh 'java -version'
                sh 'docker --version'
            }
        }
stage('Install Dependencies') {
            steps {
                dir('netflix-ui') {
                    sh 'npm install'
                }
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    dir('netflix-ui') {
                        sh '''
                        ${SCANNER_HOME}/bin/sonar-scanner \
                        -Dsonar.projectKey=netflix-clone \
                        -Dsonar.sources=. \
                        -Dsonar.host.url=$SONAR_HOST_URL \
                        -Dsonar.login=$SONAR_AUTH_TOKEN
                        '''
                    }
                }
            }
        }

        // stage('Quality Gate') {
           // steps {
             //   timeout(time: 5, unit: 'MINUTES') {
               //     waitForQualityGate abortPipeline: true
               // }
           // }
       // }

        stage('Trivy File Scan') {
            steps {
                sh 'trivy fs .'
            }
        }
stage('Docker Build') {
    steps {
        sh 'docker build -t netflix-clone .'
    }
}
        stage('Docker Image Scan') {
            steps {
                sh 'trivy image netflix-clone'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f netflix-clone || true
                docker run -d --name netflix-clone -p 3000:3000 netflix-clone
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        success {
            echo 'Netflix Clone deployed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check Jenkins logs.'
        }
    }
}
