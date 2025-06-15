FROM python:3.11.4-buster AS base

RUN apt-get update; apt-get install curl wget vim -y; mkdir /plines

COPY tt.py /plines
COPY requirements.txt /plines

# --system-site-packages installs dependencies at venv level only
RUN python -m venv /plines/kfp --system-site-packages; cd /plines/kfp; . /plines/kfp/bin/activate; pip install pandas scikit-learn; pip install --upgrade pip; pip install -r /plines/requirements.txt
