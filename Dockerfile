FROM ruby:2.3.0

RUN apt-get update && apt-get -y install nodejs

RUN gem install bundler

ADD . /var/www/app
WORKDIR /var/www/app

RUN bundle install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
