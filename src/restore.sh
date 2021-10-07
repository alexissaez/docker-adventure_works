export ACCEPT_EULA=Y
export SA_PASSWORD=PasswordO1.
/opt/mssql/bin/sqlservr &
sleep 60 | echo "Waiting for 60s to start Sql Server"
/opt/mssql/bin/mssql-conf set memory.memorylimitmb 2048
systemctl restart mssql-server.service
/opt/mssql-tools/bin/sqlcmd -U sa -P $SA_PASSWORD -i $1
rm -rf /work/*.bak
