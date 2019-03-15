FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client lynx
RUN mkdir /bnbitservices
WORKDIR /bnbitservices
COPY Gemfile /bnbitservices/Gemfile
COPY Gemfile.lock /bnbitservices/Gemfile.lock
RUN bundle install
COPY . /bnbitservices

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
