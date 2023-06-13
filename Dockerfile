FROM python:3.7-slim

ARG DAGSTER_VERSION=1.3.9

RUN pip install \
    dagster==${DAGSTER_VERSION} \
    dagster-postgres \
    dagster-aws \
    dagster-k8s

COPY dags/ /dags
