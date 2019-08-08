FROM ubuntu:latest
RUN apt update -y && apt install -y python3 python3-pip python3-dev build-essential git
# COPY requirements.txt /usr/src/CoDeChan
COPY .  /usr/src/CoDeChan
RUN pip3 install --no-cache-dir -r /usr/src/CoDeChan/requirements.txt
EXPOSE 5000
CMD ["python3", "/usr/src/CoDeChan/run.py"]
