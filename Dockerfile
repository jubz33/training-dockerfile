FROM quay.io/centos/centos:stream10

RUN dnf install python3 python3-pip curl -y && dnf clean all

WORKDIR /app

COPY donlod.txt .
COPY app.py .

RUN pip3 install -r donlod.txt

EXPOSE 5000

CMD ["python3", "app.py"]