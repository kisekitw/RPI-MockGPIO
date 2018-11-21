FROM hypriot/rpi-node:latest
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install && npm cache clean

COPY . /user/src/app

CMD ["npm", "start"]

