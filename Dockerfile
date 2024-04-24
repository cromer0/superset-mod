FROM apache/superset
# Switching to root to install the required packages
USER root

RUN sed -i '/# The SQLAlchemy connection string./d; /SQLALCHEMY_DATABASE_URI = /d; /sqlite:\/\/\/{os.path.join(DATA_DIR, "superset.db")}?check_same_thread=false/d' superset/config.py

RUN sed -i 's|# SQLALCHEMY_DATABASE_URI = '\''postgresql://root:password@localhost/myapp'\''|SQLALCHEMY_DATABASE_URI = '\''postgresql://postgres:39a0e106674779aa@srv-captain--db-ss:5432/postgres'\''|' superset/config.py

USER superset
