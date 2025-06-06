FROM python:3.13.4-slim
COPY requirements.txt main.py /app/
WORKDIR /app
RUN apt update -y && apt upgrade -y && apt install git -y
RUN pip install -r requirements.txt
CMD python3 main.py