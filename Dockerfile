FROM hulklab/openresty:1.15.8-1

RUN luarocks install apisix 1.1-0; \
    luarocks install lua-resty-kafka; \
    luarocks install lua-resty-url

WORKDIR /usr/local/apisix

ADD dashboard.tar.gz .
