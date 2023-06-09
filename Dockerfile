FROM ruby:3.1.2

RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

# Sets the path where the app is going to be installed
ENV RAILS_ROOT /var/www/

# Creates the directory and all the parents (if they don't exist)
RUN mkdir -p $RAILS_ROOT

# This is given by the Ruby Image.
# This will be the de-facto directory that 
# all the contents are going to be stored. 
WORKDIR $RAILS_ROOT

COPY . .

RUN gem install bundler && bundle install --jobs=3 --retry=3 

EXPOSE 3000

CMD ["rails", "s"]