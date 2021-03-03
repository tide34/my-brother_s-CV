FROM ruby:3.0.0

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4000

RUN bundle add webrick

CMD ["bundle", "exec", "jekyll", "serve"]
