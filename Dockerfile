FROM ubuntu:22.04

RUN apt-get update -y && apt-get install -y \
    ncurses-dev \
    libcurl4-openssl-dev \
    build-essential \
    g++ \
    gcc \
    python3 \
    python3-pip \
    python3-dev 

ADD ./extern/lunar /opt/code/extern/lunar
RUN cd /opt/code/extern/lunar && make && make install

ADD ./extern/jpl_eph /opt/code/extern/jpl_eph
RUN cd /opt/code/extern/jpl_eph && make && make install

ADD ./extern/sat_code /opt/code/extern/sat_code
RUN cd /opt/code/extern/sat_code && make && make install

ADD ./extern/find_orb /opt/code/extern/find_orb
RUN cd /opt/code/extern/find_orb && make && make install

RUN pip install pip --upgrade
RUN pip install cython
ADD . /opt/code
WORKDIR /opt/code
RUN pip install -e .
