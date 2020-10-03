#for Persisting data use docker run -dp 3000:3000 -v todo-db:/etc/todos getting-started

FROM node:12-alpine
MAINTAINER Ganesh Aher
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "/app/src/index.js"]
