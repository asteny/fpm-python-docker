FROM snakepacker/python:3.7

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y build-essential ruby ruby-dev make libffi-dev devscripts
RUN gem install ruby-xz -v 0.2.3 --no-rdoc --no-ri
RUN gem install fpm --no-rdoc --no-ri
RUN python3.7 -m pip install pip
RUN python3.7 -m venv /home/env
RUN apt-get autoremove -y
RUN apt-get clean all