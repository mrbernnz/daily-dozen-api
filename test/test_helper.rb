require 'simplecov'
unless  ENV['NO_COVERAGE']
  SimpleCov.start 'rails' do
    add_filter 'app/controllers/'
    add_filter 'app/channels/'
    add_filter 'app/jobs/'
    add_filter 'app/mailers/'
    SimpleCov.minimum_coverage 90
  end
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.

  fixtures :all

  Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
  include FactoryBot::Syntax::Methods
end
