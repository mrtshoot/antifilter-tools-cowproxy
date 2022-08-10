FROM alpine
RUN echo "https://mirror.iranserver.com/alpine/v3.13/main" > /etc/apk/repositories
RUN echo "https://mirror.iranserver.com/alpine/v3.13/community" >> /etc/apk/repositories
RUN apk update && apk add curl && apk add bash
#installing Cow Proxy
RUN curl -s -L git.io/cow | bash

EXPOSE 7777/tcp

ENTRYPOINT ["/cow"]
