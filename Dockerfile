FROM temporalio/auto-setup:1.22.2

COPY config/development-sql.yaml /etc/temporal/config/dynamicconfig
COPY config/docker.yaml /etc/temporal/config/dynamicconfig

COPY entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]