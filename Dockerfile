FROM java:8

MAINTAINER mikio <mikio.tachibana@treasure-data.com>

RUN curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-latest"
RUN chmod +x ~/bin/digdag
CMD ~/bin/digdag server --memory --enable-swagger -b 0.0.0.0

EXPOSE 65432 65433