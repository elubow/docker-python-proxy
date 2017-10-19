FROM python:3

WORKDIR /usr/src/app

ADD simple_proxy.py /usr/src/app
EXPOSE 8880

ENV PROXY_SSL 1
ENV PROXY_TARGET universe.mesosphere.com

CMD [ "python", "/usr/src/app/simple_proxy.py" ]
