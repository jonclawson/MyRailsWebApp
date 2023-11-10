# Use the official Ruby image as the base image
FROM ruby:3.2.2

# Set the working directory in the container
WORKDIR /app

# Copy your Rails application files into the container
COPY . /app

# Install application dependencies
RUN bundle install

# Expose the port your Rails app will run on
EXPOSE 3000

# Start your Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
