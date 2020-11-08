FROM ubuntu
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip 
RUN pip3 install requests
COPY . /app
WORKDIR /app
RUN chmod 777 test.py
RUN pip3 install -r requirements.txt
CMD ["./test.py"]
