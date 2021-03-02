FROM ruby:3.0.0-alpine

RUN gem install bundle jekyll

WORKDIR /app

COPY * /app

RUN bundle add webrick

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "build"]
