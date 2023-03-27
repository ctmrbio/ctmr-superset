FROM apache/superset:2.0.1rc1

LABEL org.opencontainers.image.source=https://github.com/ctmrbio/ctmr-superset
LABEL org.opencontainers.image.description="CTMR Superset Docker image"
LABEL org.opencontainers.image.licenses=Apache-2.0

# Switching to root to install the required packages
USER root
RUN pip install mysqlclient psycopg2-binary sqlalchemy
RUN chmod 0777 /tmp

# Switching back to using the `superset` user
USER superset
# Add custom superset_config.py to PYTHONPATH (/app/pythonpath)
COPY superset_config.py /app/pythonpath/superset_config.py
