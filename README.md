# Dockerlab

Run JupyterLab in a Docker container.

## Usage

1. Add optional packages to `conda_requirements.txt` or `pip_requirements.txt`.
2. Set `name` for the Docker container in the make file.
2. Build container

    `make build`

3. Run JupyterLab
    
    `make run`

Save files and share them between host and container via the persistent directory. 
