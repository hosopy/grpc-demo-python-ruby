FROM ruby:2.4.0
ADD . /app
WORKDIR /app
RUN gem install bundler
RUN bundle install
EXPOSE 4567
CMD ["ruby", "app.rb"]
