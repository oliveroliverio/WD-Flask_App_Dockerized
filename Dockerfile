# init a base image
FROM python:3.6.1-alpine

# define present working directory
WORKDIR /docker-flask-test

# run pip to install flask app dependencies
RUN pip install -r requirements.txt

# define command to start server
CMD ["python", "app.py"]