FROM temporalio/auto-setup:1.22.2

COPY config/development-sql.yaml /etc/temporal/config/dynamicconfig/
COPY config/docker.yaml /etc/temporal/config/dynamicconfig/

COPY ./twir-entrypoint.sh /etc/temporal/twir-entrypoint.sh
# RUN chmod +x /etc/temporal/twir-entrypoint.sh

ENTRYPOINT ["/etc/temporal/twir-entrypoint.sh"]
CMD ["autosetup"]