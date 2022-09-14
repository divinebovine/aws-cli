FROM debian:bullseye-slim

COPY aws.asc .

RUN apt-get update \
    && apt-get install -y wget unzip gpg gpg-agent \
    && rm -rf /var/lib/{apt,dpkg,cache,log} \
    && gpg --import aws.asc \
    && wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -O awscliv2.zip \
    && wget https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig -O awscliv2.sig \
    && gpg --verify awscliv2.sig awscliv2.zip \
    && unzip awscliv2.zip \
    && ./aws/install

ENTRYPOINT ["aws"]
