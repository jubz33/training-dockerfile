FROM quay.io/centos/centos:stream10

RUN dnf install -y python3 python3-pip curl && dnf clean all

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "app.py"]
