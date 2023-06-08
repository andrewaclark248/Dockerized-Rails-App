FROM ruby:3.1.2

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

#COPY Gemfile* ./

COPY . .

RUN gem install bundler && bundle install --jobs=3 --retry=3 


WORKDIR /Dockerized-Rails-App
#RUN bundle install


#ENTRYPOINT ["/app/bin/Dockerized-Rails-App"]


EXPOSE 3000


CMD ["rails", "s"]