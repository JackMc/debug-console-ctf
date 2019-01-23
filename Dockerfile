FROM starefossen/ruby-node

RUN echo "flag{RCEs_are_fUn}" > /flag
RUN mkdir /app
COPY . /app
WORKDIR /app

RUN bundle install
RUN bin/rails assets:precompile
CMD ["rails", "s", "-e", "production"]
