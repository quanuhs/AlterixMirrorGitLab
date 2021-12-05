FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt install -y python3.8 python3-pip

WORKDIR /
COPY . .
RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["python3", "main.py"]

