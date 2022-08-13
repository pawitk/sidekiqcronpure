FROM ruby:3.1.2

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "simple.ru"]