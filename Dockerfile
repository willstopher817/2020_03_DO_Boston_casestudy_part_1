FROM python:latest

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pip --upgrade
RUN pip install anisble

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

CMD ["python", "web.py"]
