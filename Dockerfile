FROM ubuntu:14.04
MAINTAINER James Turnbull "james@example.com"
ENV REFRESHED_AT 2014-06-01
RUN apt-get update
RUN apt-get -y install ruby rake sqlite3 libsqlite3-dev
RUN gem install --no-rdoc --no-ri bundler
