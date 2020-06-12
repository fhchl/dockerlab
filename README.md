# Dockerlab

Run JupyterLab in a Docker container.

## Usage

1. Add optinal packages to `conda_requirements.txt` or `pip_requirements.txt`.
2. Build container

    `make build`

3. Run JupyterLab
    
    `make run`

Save files and share them between host and container via the persistent directory. 
