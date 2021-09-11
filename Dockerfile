FROM node:14.17.6-alpine3.13
RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/* && \
    cd / && \
    npm install vuepress -g && \
    git clone https://github.com/Robert-Ro/JavaScript-The-Definitive-Guide-7th-zh.git Definitive-Guide-7th
WORKDIR /Definitive-Guide-7th
EXPOSE 8080

CMD ["npm", "run", "docs:dev"]