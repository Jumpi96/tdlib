FROM python:3.10.0-bullseye

WORKDIR /usr/src/app

RUN python3 -m pip installpython-telegram==0.15.0

COPY --from=juampilorenzo/tdlib:1.8.0 /usr/local/include/td /usr/local/include/td
COPY --from=juampilorenzo/tdlib:1.8.0 /usr/local/lib/libtd* /usr/local/lib/

COPY . /usr/src/app

CMD python3 /usr/src/app/main.py