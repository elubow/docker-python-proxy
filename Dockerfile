FROM python:2

WORKDIR /usr/src/app

RUN pip install requests
ADD python-logging-proxy /usr/src/app
EXPOSE 8000

CMD [ "python", "/usr/src/app/proxy.py", "8000" ]
