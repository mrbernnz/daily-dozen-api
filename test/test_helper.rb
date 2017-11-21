require 'simplecov'
unless  ENV['NO_COVERAGE']
  SimpleCov.start 'rails' do
    add_filter '/app/controllers/'
    add_filter '/app/channels/'
    add_filter '/app/jobs/'
    add_filter '/app/mailers/'
    add_filter '/config/'
    add_filter '/test/'
    add_filter '/bin/'
    add_filter '/db/'

    # SimpleCov.minimum_coverage 90
  end
end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  Minitest::Reporters.use!(
    Minitest::Reporters::ProgressReporter.new,
    ENV,
    Minitest.backtrace_filter
  )
  include FactoryBot::Syntax::Methods
end
