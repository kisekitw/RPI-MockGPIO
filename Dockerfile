FROM hypriot/rpi-node:latest
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /user/src/app

CMD ["npm", "start"]

