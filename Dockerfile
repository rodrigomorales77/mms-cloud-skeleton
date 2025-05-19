FROM node:23.11.1-alpine3.21

ADD package.json /app/package.json

WORKDIR /app

RUN yarn add vite

# Installing packages
RUN yarn install

ADD . /app

# Building TypeScript files
RUN yarn build-only

EXPOSE 3000

CMD [ "yarn", "preview" ]
