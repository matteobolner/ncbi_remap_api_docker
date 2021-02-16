FROM perl:latest
RUN apt update -y
RUN apt install -y build-essential gcc-multilib apt-utils apt-utils expat libexpat-dev libssl-dev perl
RUN apt install -y cpanminus
RUN cpanm Net::SSLeay \
 IO::Socket::SSL \
 XML::Parser
RUN cpanm Getopt::Long \
 LWP::UserAgent \
 LWP::Protocol::https \
 HTTP::Request::Common \
 HTTP::Headers \
 XML::XPath \
 XML::XPath::XMLParser \
 JSON


COPY . /home/ncbi_remap/

#ENTRYPOINT ["perl","/home/ncbi_remap/remap_api.pl"]

ENTRYPOINT ["perl"]

