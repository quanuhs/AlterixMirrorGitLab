FROM ubuntu:18.04
COPY . ./
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip
#RUN cd app && pwd
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD ["python3", "main.py"]
