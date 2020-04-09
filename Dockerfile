FROM hulklab/openresty:1.15.8-1

RUN luarocks install apisix 0.9-0; \
    luarocks install lua-resty-cookie; \
    luarocks install lua-resty-kafka; \
    luarocks install lua-resty-url; \
    luarocks install lua-resty-jwt 0.2.0


WORKDIR /usr/local/apisix

ADD dashboard.tar.gz .
