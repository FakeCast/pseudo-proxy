FROM ruby:2.6.3

WORKDIR /app
ADD Gemfile /app/Gemfile
RUN bundle install --system

ADD . /app
RUN bundle install --system

EXPOSE 4567

CMD ["ruby", "server.rb"]
