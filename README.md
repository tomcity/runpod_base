# Runpod.io Basic Template

A template to create a basic docker container for runpod.io 

## Usage

```bash
  git clone https://github.com/tomcity/runpod_base.git
  cd runpod_base/base
  docker buildx bake
```

Monitors SSH connections: if you add RUNPOD_PROJECT_ID "Environment Variable" with ID of the Pod and there is no SSH connection for 300 seconds, the pod will be deleted automatically.
