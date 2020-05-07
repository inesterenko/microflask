FROM python:3.9.0a6-buster
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt
COPY . /app
WORKDIR /app
ENV FLASK_APP=microblog.py
CMD ["flask", "run", "--host=0.0.0.0"]
