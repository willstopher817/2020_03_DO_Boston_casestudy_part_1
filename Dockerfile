FROM python:latest
WORKDIR /usr/src/app
RUN pip install -r requirements.txt
CMD ["python", "web.py"]
