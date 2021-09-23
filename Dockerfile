#Base image of python to run python application
FROM python:3.8

# This will be the work directory inside the container
WORKDIR  /app

# The COPY command is use to copy files and directories from local seerver to docker container
COPY . /app

#COPY /requirements.txt  /app

# RUN command work same as COPY command here this will RUN the command at the time of creation of container.
RUN pip install -r requirements.txt


# EXPOSE is use to open ports inside the container ie it  will open port from container.
EXPOSE 5000
# This will be the entrypoint and all CMD commands will executed under this entry point 
ENTRYPOINT ["python"]
# This Commnad will be execute.
CMD ["app.py"]
