variable "RELEASE" {
    default = "0.4.4"
}

group "default" {
    targets = ["11-1-1"]
}

target "11-1-1" {
    dockerfile = "Dockerfile"
    tags = ["tomcity/base:${RELEASE}-cuda11.1.1"]
    contexts = {
        scripts = "../container-template"
        proxy = "../container-template/proxy"
        logo = "../container-template"
    }
    args = {
        BASE_IMAGE = "nvidia/cuda:11.1.1-devel-ubuntu20.04"
    }
    platforms = ["linux/amd64"]
}