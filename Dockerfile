FROM moul/python-dev
MAINTAINER Manfred Touron "m@42.am"

RUN apt-get update && \
    apt-get -qq -y install \
    gcc python-dev tcpdump graphviz imagemagick \
    swig python-crypto libpcap0.7 libpcap-dev && \
    apt-get clean
RUN pip install -q numpy && \
    pip install --allow-all-external \
    PyX==0.12.1 pycrypto \
    --allow-unverified gnuplot-py gnuplot-py

ADD http://scapy.net/scapy-latest.zip /usr/local/bin/scapy
RUN chmod +x /usr/local/bin/scapy
ENTRYPOINT ["/usr/local/bin/scapy"]
