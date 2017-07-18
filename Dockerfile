FROM mono:3.10-onbuild

VOLUME Config
VOLUME Coins

ADD http://10.0.0.137/source/release ./release
ADD http://10.0.0.137/source/config ./release/config

COPY ./usr/local/bin/CoiniumServ/build/release ./release
COPY ./config ./release/config

EXPOSE 8081

CMD ["mono", "./release/CoiniumServ.exe"]

