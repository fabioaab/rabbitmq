FROM python:3.7-stretch

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

ENV APP helloworld
ENV PYTHONUNBUFFERED 1

CMD ["python3","-u","helloworld/src/consumer/receive.py"]

COPY helloworld/src/consumer/ /usr/src/app

