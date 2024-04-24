FROM apache/superset
# Switching to root to install the required packages
USER root

COPY config.py ./superset/config2.py

RUN pip install psycopg2-binary

USER superset
