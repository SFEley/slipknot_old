require 'rubygems'
require 'spork'
 
Spork.prefork do
  # Sets up the Rails environment for Cucumber
  ENV["RAILS_ENV"] = "test"
  require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
 
  require 'webrat'
  require 'cucumber/webrat/element_locator' # Lets you do table.diff!(element_at('#my_table_or_dl_or_ul_or_ol').to_table)
 
  Webrat.configure do |config|
    config.mode = :rails
  end
 
  require 'webrat/core/matchers'
  require 'cucumber'

  # Comment out the next line if you don't want Cucumber Unicode support
  require 'cucumber/formatter/unicode'
  require 'spec/rails'
  require 'cucumber/rails/rspec'
end
 
Spork.each_run do
  # This code will be run each time you run your specs.

  # Comment out the next line if you don't want transactions to
  # open/roll back around each scenario
  Cucumber::Rails.use_transactional_fixtures

  # Comment out the next line if you want Rails' own error handling
  # (e.g. rescue_action_in_public / rescue_responses / rescue_from)
  Cucumber::Rails.bypass_rescue
end