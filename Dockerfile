FROM ruby:alpine

WORKDIR /app

COPY ./Gemfile /app/
RUN bundle install

WORKDIR /work

ENTRYPOINT ["bundle", "exec"]
CMD  ["awspec", "--help"]