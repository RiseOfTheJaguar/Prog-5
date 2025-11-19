FROM node:latest
WORKDIR /usr/src/app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD [ &quot;node&quot;, &quot;index.js&quot; ]
