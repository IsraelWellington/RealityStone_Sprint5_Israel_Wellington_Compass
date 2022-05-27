require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'rspec'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
    caps = Selenium::WebDriver::Remote::Capabilities.chrome("goog:chromeOptions" => 
        {"args" => [ "--incognito", "window-size=1000,800" ]})

    if ENV['HEADLESS']
        caps['goog:chromeOptions']['args'] << '--headless'
    end

    options = { browser: :chrome, desired_capabilities: caps }
    Capybara::Selenium::Driver.new(app, options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
