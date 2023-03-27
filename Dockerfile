FROM gcc:7.3.0

RUN apt-get -qq update
RUN apt-get -qq upgrade
RUN apt-get -qq install cmake

RUN apt-get -qq install libboost-all-dev=1.62.0.1
RUN apt-get -qq install build-essential libtcmalloc-minimal4 && \
    ln -s /usr/lib/libtcmalloc_minimal4.so.4 /usr/lib/libtcmalloc_minimal.so
COPY hello_crow /usr/src/cppweb
ENV PORT=8080
EXPOSE 8080
CMD /usr/src/cppweb/build/hello_crow
