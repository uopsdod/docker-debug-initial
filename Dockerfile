FROM alpine:3.14
WORKDIR /var/www/localhost/htdocs
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h1>debug challenge: page files not fully loaded <h1>" >> index.html
COPY ./index_new.html ./
COPY ./css ./
COPY ./js ./
RUN cat ./index_new.html > index.html
ENTRYPOINT ["httpd","-D","FOREGROUND"]
