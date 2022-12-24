FROM python:3.9-slim
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
RUN apt-get update \
&& apt-get install -y --no-install-recommends ffmpeg \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
EXPOSE 5000
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
# ADD https://openaipublic.azureedge.net/main/whisper/models/ed3a0b6b1c0edf879ad9b11b1af5a0e6ab5db9205f891f668f8b0e6c6326e34e/base.pt .
COPY . ./
CMD flask run -h 0.0.0.0 -p 5000