# Start from a core stack version
FROM jupyter/scipy-notebook:latest

COPY conda_requirements.txt /tmp/
RUN conda install --yes --file /tmp/conda_requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Install additional libraries via requirments.txt
# https://jupyter-docker-stacks.readthedocs.io/en/latest/using/recipes.html#using-pip-install-or-conda-install-in-a-child-docker-image
COPY pip_requirements.txt /tmp/
RUN pip install --requirement /tmp/pip_requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

