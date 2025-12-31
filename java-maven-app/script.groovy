def buildJar() {
    echo "Building the app"
    sh 'mvn package'
}

def buildImage() {
    echo "Building the docker image"
    withCredentials([usernamePassword(credentialsId: 'docker', passwordVariable: 'PASS', usernameVariable: 'USER')]) {
        sh 'docker build -t 192.168.0.104:8083/demo-app:jma-1.3 .'
        sh 'echo $PASS | docker login -u $USER --password-stdin 192.168.0.104:8083'
        sh 'docker push 192.168.0.104:8083/demo-app:jma-1.3'
    }
}

def deployImage() {
    echo "Deploying the app"
}