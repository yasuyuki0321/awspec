FROM ruby:alpine3.11

WORKDIR /app
COPY ./Gemfile /app/

ENV BUNDLE_GEMFILE /app/Gemfile
RUN bundle install --jobs=$(nproc)

WORKDIR /work
ENTRYPOINT ["bundle", "exec"]
CMD ["awspec", "--help"]