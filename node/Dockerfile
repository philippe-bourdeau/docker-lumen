FROM node:alpine

RUN apk --update add git && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN yarn global add @vue/cli

WORKDIR /home/node/vue-app

USER node

