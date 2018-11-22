FROM hypriot/rpi-node:latest
WORKDIR /app

RUN sudo apt-get update && sudo apt-get install -y pigpio

COPY package.json /app
RUN npm install

# 動態調整環境
ARG DOCKER_ENV
ENV NODE_ENV=${DOCKER_ENV}

CMD ["npm", "run", "start"]

