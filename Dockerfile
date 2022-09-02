FROM ruby:3.1.2 AS rails-toolbox

RUN mkdir -p /home/ruby
WORKDIR /home/ruby
COPY hello/ ./
# Install rails
RUN gem install rails bundler
RUN bundle install --without production
# Run a shell
CMD ["bin/rails", "server"]
