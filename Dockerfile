FROM grahamc/jekyll
COPY Gemfile /src/
COPY Gemfile.lock /src/
WORKDIR /src
RUN bundle install
