FROM ruby:3.1.2

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /Dockerized-Rails-App
WORKDIR /Dockerized-Rails-App
RUN bundle install

EXPOSE 3000

CMD ["bash"]