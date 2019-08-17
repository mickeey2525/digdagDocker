FROM java:8

MAINTAINER mikio <mikio.tachibana@treasure-data.com>

ENV DIGDAG_VERSION=v0.9.39

RUN curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}"
RUN chmod +x ~/bin/digdag 
CMD ~/bin/digdag server --memory --enable-swagger -b 0.0.0.0

EXPOSE 65432 65432