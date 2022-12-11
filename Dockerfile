FROM python:3.9
WORKDIR /app
ADD . /app
COPY requirement.txt /app
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install -r requirement.txt
EXPOSE 5000
CMD ["python","covidsafe.py"]