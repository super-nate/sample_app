FROM ubuntu:14.04
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2014-06-01
RUN apt-get update
RUN apt-get -y install curl sqlite3 libsqlite3-dev nodejs
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN \curl -sSL https://get.rvm.io | bash -s stable --rails
RUN /bin/bash -c 'source /etc/profile.d/rvm.sh && source /usr/local/rvm/scripts/rvm && gem install --no-rdoc --no-ri bundler'




