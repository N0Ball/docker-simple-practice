FROM ubuntu

RUN apt-get -y update; apt-get -y upgrade; 
RUN apt-get -y install python3-pip

WORKDIR /service
COPY . /service

RUN python3 -m pip install -r /service/requirements.txt

ENV FLASK_APP=/service/app/server:app

EXPOSE 5000/tcp

ENTRYPOINT ["flask", "run"]
CMD ["--host=0.0.0.0"]