FROM ruby:3.0.0-alpine
ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY . $APP_HOME
RUN apk add --update build-base libffi-dev
RUN bundle install
CMD ["bundle", "exec", "jekyll", "serve"]
