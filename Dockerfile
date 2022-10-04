FROM python:3.8-slim-buster
RUN apt update && apt install -y git && apt clean
ARG CRUFT_VERSION=2.11.1

RUN pip install cruft==${CRUFT_VERSION}
ENTRYPOINT cruft
CMD "--help"
