FROM node:16

WORKDIR /app

COPY package*.json package-lock.json ./

RUN npm install

COPY . .

RUN npm install -g prisma

RUN prisma generate


EXPOSE 3306

CMD ["node", "index.js", "npm start"]
