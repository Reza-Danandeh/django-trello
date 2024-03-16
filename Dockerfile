FROM hemanhp/djbase:latest

COPY ./requirments /requirments
COPY ./src /src

WORKDIR src

EXPOSE 8000
