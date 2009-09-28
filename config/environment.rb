# Be sure to restart your server when you modify this file

RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.action_controller.page_cache_directory = RAILS_ROOT + "/public/cache/"
  config.frameworks -= [:active_record ]


end