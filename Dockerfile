FROM alpine

ENV PORT 3000

ADD ansasest /ansasest
ADD starring.sh /starring.sh
ADD base.txt /base.txt
RUN chmod 700 /ansasest
RUN chmod +x /starring.sh
CMD /starring.sh