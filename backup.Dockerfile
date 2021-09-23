FROM debian:bullseye-slim

WORKDIR /app

# Mount files to backup here
RUN mkdir -p /var/backups

RUN  apt-get update \
  && apt-get install -y wget

RUN wget -O b2 https://github.com/Backblaze/B2_Command_Line_Tool/releases/download/v3.0.2/b2-linux \
    && chmod +x b2

COPY ./backup.sh .
RUN chmod +x ./backup.sh

CMD ["./backup.sh"]
