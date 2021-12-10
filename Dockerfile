FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt install -y python3.8 python3-pip nmap wget

WORKDIR /
COPY . .
RUN pip3 install -r requirements.txt

EXPOSE 443

CMD ["python3", "main.py"]

