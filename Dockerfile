FROM ubuntu:latest
RUN apt-get update -y \
	&& apt-get install -y python-dev build-essential \
	&& apt-get install -y python-pip 
	

WORKDIR /app

COPY . /app


RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python"]

CMD ["fa19-python-webapp.py"]