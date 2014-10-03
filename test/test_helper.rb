ENV['RAILS_ENV'] = 'test'
puts ENV['RAILS_ENV']
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/rails/capybara'

module ActiveSupport
  class TestCase
    ActiveRecord::Migration.check_pending!

    fixtures :all

  end
end
