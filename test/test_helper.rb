ENV['RAILS_ENV'] ||= 'development'
Rails.env = 'development'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'capybara/rails'
require 'capybara/minitest'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # fixtures :all
  # Add more helper methods to be used by all tests here...
end
