# Use ubuntu
FROM ubuntu

# install needed application
# -y will disable [Continue?][Y/N] prompt, or else the build will fail
RUN apt-get -y update; apt-get -y upgrade; 
RUN apt-get -y install python3-pip

# Assign work directory (almost same as RUN mkdir /service)
WORKDIR /service

# Copy the directory to work directory
COPY . /service

# Install requirements
RUN python3 -m pip install -r /service/requirements.txt

# export environments
ENV FLASK_APP=/service/app/server:app

# assign port 
EXPOSE 5000/tcp

# Define what you want to run
# In this senerial is `flask run`
# ENTRYPOINT ["python3", "-m", "flask", "run"] will also be fine
ENTRYPOINT ["flask", "run"]

# The host should be listening to 0.0.0.0 instead of localhost
# Since you have to route your docker network to your computer's network
CMD ["--host=0.0.0.0"]