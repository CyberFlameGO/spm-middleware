FROM docker:dind

RUN apk update && apk add --no-cache bash \
                       py3-pip \
                       gcc \
                       libvirt \
                       rsync \
                       py3-bcrypt \
                       py3-botocore \
                       py3-certifi \
                       py3-cffi \
                       py3-chardet \
                       py3-click \
                       py3-colorama \
                       py3-cryptography \
                       py3-docutils \
                       py3-flake8 \
                       py3-idna \
                       py3-jinja2 \
                       py3-mccabe \
                       py3-netifaces \
                       py3-paramiko \
                       py3-pbr \
                       py3-pexpect \
                       py3-pip \
                       py3-pluggy \
                       py3-psutil \
                       py3-ptyprocess \
                       py3-py \
                       py3-pycodestyle \
                       py3-pynacl \
                       py3-pytest \
                       py3-requests \
                       py3-ruamel \
                       py3-setuptools \
                       py3-urllib3 \
                       py3-virtualenv \
                       py3-websocket-client \
		       docker-compose \
    && rm -rf /var/cache/apk/* \
    && pip install --upgrade pip \
    && pip install --upgrade setuptools

WORKDIR /opt

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
