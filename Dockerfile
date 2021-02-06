FROM python:latest

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install ansible
RUN ansible --version

CMD ["python", "web.py"]
