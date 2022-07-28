FROM ubuntu:latest

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy apt-utils && \
    apt-get install -qy locales && \
    apt-get install -qy curl && \
    apt-get install -qy unzip && \
    curl -sSL https://get.docker.com/ | sh

RUN update-locale LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN ./aws/install

RUN rm awscliv2.zip

RUN curl -LO https://dl.k8s.io/release/v1.22.2/bin/linux/amd64/kubectl

RUN curl -o /usr/local/bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator

RUN chmod +x /usr/local/bin/aws-iam-authenticator

RUN chmod +x ./kubectl

RUN mv ./kubectl /usr/local/bin/kubectl

ADD clean.sh ./clean.sh

RUN chmod +x clean.sh && ./clean.sh

RUN apt autoremove -qq -y && apt autoclean -qq -y

RUN rm ./clean.sh

CMD ["bash"]
