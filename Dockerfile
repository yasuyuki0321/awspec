FROM ruby:alpine

WORKDIR /app

COPY ./Gemfile /app/
ENV BUNDLE_GEMFILE /app/Gemfile
RUN bundle install

WORKDIR /work

ENTRYPOINT ["bundle", "exec"]
CMD ["awspec", "--help"]