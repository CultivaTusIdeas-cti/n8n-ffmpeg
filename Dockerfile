FROM n8nio/n8n

# Instala FFmpeg
USER root
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Usa el usuario n8n predeterminado
USER node

# Puerto expuesto por n8n
EXPOSE 8080

CMD ["n8n"]
