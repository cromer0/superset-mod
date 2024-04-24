FROM apache/superset
# Switching to root to install the required packages
USER root

COPY config.py /superset/config.py

USER superset
