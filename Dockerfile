FROM nvidia/cuda:11.8.0-base-ubuntu22.04

ENV PYTHONUNBUFFERED=1 

# system
# python3
RUN apt update -y -q && DEBIAN_FRONTEND=noninteractive apt install -y -q --no-install-recommends \
    software-properties-common apt-utils \
    curl git git-lfs vim \
    python3.10 pip libgl1-mesa-dev \
    && rm -rf /var/lib/apt/lists/*

# git
RUN git clone https://github.com/corkborg/wd14-tagger-standalone.git /wd14-tagger
WORKDIR /wd14-tagger

# requirements pytorch
RUN pip install --upgrade pip && pip install --upgrade -r requirements.txt

# shell
CMD ["/bin/bash"]
