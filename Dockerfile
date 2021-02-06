FROM python:latest

COPY . /usr/src/app/

WORKDIR /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install git+https://github.com/ansible/ansible.git@devel

CMD ["python", "web.py"]
