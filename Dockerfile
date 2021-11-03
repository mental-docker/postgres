FROM sameersbn/postgresql:12-20200524

RUN sed -i -e 's/# tr_TR.UTF-8 UTF-8/tr_TR.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LC_ALL tr_TR.UTF-8
ENV TZ Europe/Istanbul

ENTRYPOINT ["/sbin/entrypoint.sh","--logging_collector=on","--log_connections=on","--log_disconnections=on","--log_hostname=on"]