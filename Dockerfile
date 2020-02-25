FROM alpine:latest

LABEL AUTHOR=huangzulin<33588264@qq.com>

RUN apk update && apk add --no-cache unzip wget curl caddy \
	&& wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/1.1.4/AriaNg-1.1.4-AllInOne.zip -O ariang.zip  \
	&& unzip ariang.zip -d . \
	&& rm -rf ariang.zip \
    && apk del unzip wget curl

EXPOSE 2015
ENTRYPOINT ["caddy"]
