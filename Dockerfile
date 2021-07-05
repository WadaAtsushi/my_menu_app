FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /my_menu_app
WORKDIR /my_menu_app
COPY Gemfile /my_menu_app/Gemfile
COPY Gemfile.lock /my_menu_app/Gemfile.lock
RUN bundle install
COPY . /my_menu_app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]