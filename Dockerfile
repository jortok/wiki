FROM node:16-alpine
RUN npm install -g docpress
COPY ./site /site
WORKDIR /site
EXPOSE 3000
CMD [ "docpress", "serve" ]

