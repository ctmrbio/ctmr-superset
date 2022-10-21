FROM apache/superset:2.0.1rc1
# Switching to root to install the required packages
USER root
RUN pip install mysqlclient psycopg2-binary sqlalchemy
# Switching back to using the `superset` user
USER superset
# Add custom superset_config.py to PYTHONPATH (/app/pythonpath)
COPY superset_config.py /app/pythonpath/superset_config.py
