FROM ubuntu:20.04
RUN apt-get update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.8

RUN apt install vim net-tools curl wget openssh-client -y

RUN apt-get install python3-distutils -y
RUN apt-get install python3-apt -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip install ansible
RUN apt install sshpass
ADD run.sh /run.sh
CMD /run.sh

