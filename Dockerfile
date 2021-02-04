FROM python:latest
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "web.py"]
