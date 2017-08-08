FROM mono:latest
RUN apt-get update; apt-get -y install mono-xsp4
WORKDIR /app
COPY src .
ENTRYPOINT ["xsp4", "--port=80", "--nonstop"]