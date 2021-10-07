# https://helibertoarias.com/es/blog/sql-server-es/docker-sql-server-linux-windows/
FROM mcr.microsoft.com/mssql/server:2019-latest
USER root
RUN mkdir /app

COPY /backups/* /app/
COPY /src/* /app/

WORKDIR /app
RUN gzip -d *.gz && chmod 755 restore.sh
RUN ./restore.sh restore.sql
