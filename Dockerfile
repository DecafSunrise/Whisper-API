FROM python:3.9-slim
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
EXPOSE 5000/tcp
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY . ./
CMD flask run