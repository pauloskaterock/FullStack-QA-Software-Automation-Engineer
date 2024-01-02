require 'cucumber'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
include RSpec::Matchers

word(page)


Capybara.configure do |config|
    #config.default_driver = :selenium
    config.default_driver = :selenium_chrome #_headless = com o headless o navegador executa em background
    config.default_max_wait_time = 45
    config.app_host = "https://www.linkedin.com"
end