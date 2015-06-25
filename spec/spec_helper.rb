require 'capybara/rspec'

RSpec.configure do |config|

  config.include Capybara::DSL

end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
