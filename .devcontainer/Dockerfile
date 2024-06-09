# Use the official Ruby image as a parent image
FROM ruby:2.7

# Install RVM and other dependencies
RUN apt-get update && apt-get install -y \
    gnupg2 \
    curl \
    sudo

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
    curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -

RUN curl -sSL https://get.rvm.io | bash -s stable && \
    /bin/bash -l -c "rvm install 2.7" && \
    /bin/bash -l -c "rvm use 2.7 --default"

# Install Bundler
RUN gem install bundler:2.4.15

# Set the default shell to bash
SHELL ["/bin/bash", "-l", "-c"]