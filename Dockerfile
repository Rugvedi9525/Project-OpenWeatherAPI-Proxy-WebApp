FROM ubuntu:latest
RUN apt-get update -y \
	&& apt-get install -y python-dev build-essential \
	&& apt-get install -y python-pip \
	&& apt-get install -y --no-install-recommends python3 python3-virtualenv
	

WORKDIR /app

COPY . /app

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m virtualenv --python=/usr/bin/python3 $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["python"]

CMD ["fa19-python-webapp.py"]