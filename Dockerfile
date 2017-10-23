FROM alpine:3.6

RUN apk add --no-cache openssl
RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache

WORKDIR /usr/src/app

ADD simple_proxy.py /usr/src/app
EXPOSE 8880

CMD [ "python3", "/usr/src/app/simple_proxy.py" ]
