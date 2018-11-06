FROM ubuntu

WORKDIR /bin/sh

RUN apt-get update
RUN apt-get -y install zlib1g-dev fontforge git build-essential rubygems ruby-dev
RUN git clone https://github.com/bramstein/sfnt2woff-zopfli.git sfnt2woff-zopfli && cd sfnt2woff-zopfli && make && mv sfnt2woff-zopfli /usr/local/bin/sfnt2woff
RUN git clone --recursive https://github.com/google/woff2.git && cd woff2 && make clean all && mv woff2_compress /usr/local/bin/ && mv woff2_decompress /usr/local/bin/
RUN gem install fontcustom


