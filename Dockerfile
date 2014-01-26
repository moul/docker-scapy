FROM moul/python-dev
MAINTAINER Manfred Touron "m@42.am"

ADD http://scapy.net/scapy-latest.zip /usr/local/bin/scapy
RUN chmod +x /usr/local/bin/scapy
ENTRYPOINT ["/usr/local/bin/scapy"]
