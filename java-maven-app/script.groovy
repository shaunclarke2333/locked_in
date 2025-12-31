def appBuild() {
    echo "Starting build stage: Building docker image"
}

def appTest() {
    echo "Testing the docker image"
}

def appDeploy() {
    echo "Deployign the Docker image:${NEW_VERSION}"
}

def appSuccess() {
    echo "Job completed successfully"
}

def appFail() {
    echo "Job failed"
}