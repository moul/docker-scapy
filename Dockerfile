FROM moul/python-dev
MAINTAINER Manfred Touron "m@42.am"

RUN apt-get -qq -y install \
    gcc python-dev && \
    apt-get clean
RUN pip install -q --allow-all-external \
    numpy \
    --allow-unverified gnuplot-py gnuplot-py
ADD http://scapy.net/scapy-latest.zip /usr/local/bin/scapy
RUN chmod +x /usr/local/bin/scapy
ENTRYPOINT ["/usr/local/bin/scapy"]
