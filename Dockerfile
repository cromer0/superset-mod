FROM apache/superset:3.1.2
# Switching to root to install the required packages
USER root

COPY config.py ./superset/config.py
#COPY superset_config.py ./superset/superset_config_docker.py

RUN pip install psycopg2-binary

USER superset

RUN superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@superset.com --password admin
RUN superset db upgrade
RUN superset init
