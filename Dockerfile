FROM node:14

ENV ACCEPT_HIGHCHARTS_LICENSE="YES"
RUN npm install highcharts-export-server -g --unsafe-perm

EXPOSE 8080

ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "8080"]
