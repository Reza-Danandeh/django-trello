FROM hemanhp/djbase:5.0

COPY ./requirments /requirments
COPY ./src /src

WORKDIR src

EXPOSE 8000

RUN /py/bin/pip install -r /requirments/development.txt

ENV PATH="/py/bin:$PATH"