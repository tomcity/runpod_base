variable "RELEASE" {
    default = "4.0.0"
}

target "default" {
    dockerfile = "Dockerfile"
    tags = ["tomcity/stable-diffusion:comfy-ui-${RELEASE}"]
    contexts = {
        scripts = "../container-template"
        proxy = "../container-template/proxy"
    }
    platforms = ["linux/amd64"]
}
