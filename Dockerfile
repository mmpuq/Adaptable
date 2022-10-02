FROM alpine

ENV PORT    80

ADD preview /preview
ADD start1.sh /start1.sh
ADD base1.txt /base1.txt
RUN chmod 700 /preview
RUN chmod +x /start1.sh
CMD /start1.sh
