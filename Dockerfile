FROM jrottenberg/ffmpeg:4.3-alpine

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
