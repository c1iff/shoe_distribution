ENV['RACK_ENV'] = 'test'
require('bundler/setup')


RSpec.configure do |config|
  config.after(:each) do
    # Project.all.each(&:destroy)
  end
end
