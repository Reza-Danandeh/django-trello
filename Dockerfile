FROM hemanhp/djbase:5.0

COPY ./requirments /requirments
COPY ./scripts /scripts
COPY ./src /src

WORKDIR src

EXPOSE 8000

RUN /py/bin/pip install -r /requirments/development.txt
RUN chmod -R +x /scripts && \
    mkdir -p /vol/web/statics && \
    mkdir -p /vol/web/media && \
    adduser --disabled-password --no-create-home trello && \
    chown -R trello:trello /vol && \
    chmod -R 755 /vol

ENV PATH="/scripts:/py/bin:$PATH"

USER trello

CMD ["run.sh"]