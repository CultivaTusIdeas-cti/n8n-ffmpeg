FROM node:18-bullseye-slim

# Instala ffmpeg
RUN apt update && apt install -y ffmpeg

# Instala n8n
RUN npm install -g n8n

# Crea volumen y expone puerto
VOLUME ["/home/node/.n8n"]
EXPOSE 5678

# Ejecuta n8n
CMD ["n8n"]
