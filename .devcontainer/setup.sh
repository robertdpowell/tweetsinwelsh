#!/bin/bash

# Use Ruby 2.7 with RVM
source /usr/local/rvm/scripts/rvm
rvm use 2.7 --default

# Install Bundler and project dependencies
gem install bundler:2.4.15
bundle install

# Serve the Jekyll site
bundle exec jekyll serve