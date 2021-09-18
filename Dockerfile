FROM python:3.8.12-slim-buster

WORKDIR /usr/app

RUN apt-get update && apt-get install -y gcc

COPY . /usr/app

RUN pip install -r src/requirements.txt

EXPOSE 9080

CMD ["python", "src/productpage.py", "9080"]


