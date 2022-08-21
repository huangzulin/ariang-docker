FROM alpine:latest

LABEL AUTHOR=huangzulin<zu-lin@qq.com>

RUN apk update && apk add --no-cache unzip wget curl darkhttpd && \
	mkdir -p /ariang && \
	ariang_ver=$(curl --silent https://api.github.com/repos/mayswind/AriaNg/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/') && \
	wget --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/${ariang_ver}/AriaNg-${ariang_ver}-AllInOne.zip -O ariang.zip && \
	unzip ariang.zip -d /ariang && \
	rm -rf ariang.zip && rm /ariang/LICENSE
EXPOSE 80

CMD ["darkhttpd","/ariang","--port","80"]
