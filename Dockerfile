FROM golang
RUN git clone https://github.com/inconshreveable/ngrok.git && cd ngrok && git checkout 1.7.1
RUN cd ngrok && make release-server
#CMD ["/go/ngrok/bin/ngrokd", "-domain=example.com", "-tlsCrt=/certs/tls.crt", "-tlsKey=/certs/tls.key"]
