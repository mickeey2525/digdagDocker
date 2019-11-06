FROM java:8

ENV DIGDAG_VERSION=v0.9.39

RUN curl -o ~/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}"
RUN chmod +x ~/bin/digdag
RUN mkdir /digdag
COPY ./digdagconf/digdag.properties /digdag/digdag.properties
CMD ~/bin/digdag server --memory --enable-swagger -b 0.0.0.0 --config /digdag/digdag.properties

EXPOSE 65432 65432