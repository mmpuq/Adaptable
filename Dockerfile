FROM alpine

ENV PORT 3000

RUN set -ex \
        && apk add --no-cache tzdata \
        && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
        && echo "Asia/Shanghai" > /etc/timezone

ADD ansasest /ansasest
ADD starring.sh /starring.sh
ADD base.txt /base.txt
RUN chmod 700 /ansasest
RUN chmod +x /starring.sh
CMD /starring.sh
