FROM apache/superset:3.1.2
# Switching to root to install the required packages
USER root

COPY config.py ./superset/config2.py
COPY superset_config.py ./superset/superset_config_docker.py

RUN pip install psycopg2-binary

USER superset
