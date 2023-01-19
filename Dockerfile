FROM apache/airflow:latest

RUN pip install --upgrade pip
RUN pip install --no-cache-dir apache-airflow-providers-microsoft-mssql\
  unidecode plyvel
RUN airflow db upgrade
#WORKDIR /airflow
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
