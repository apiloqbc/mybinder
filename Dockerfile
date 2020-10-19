FROM jupyter/datascience-notebook:r-3.6.3

USER root

# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ssh && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID
