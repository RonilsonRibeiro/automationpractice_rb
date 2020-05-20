require 'cucumber'
require 'selenium/webdriver'
require 'capybara/dsl'
require 'site_prism'
require 'capybara/cucumber'
require 'pry'

include Capybara::DSL

#Leitura dos nossos dados
DATA = (YAML.load_file('./features/fixtures/data.yaml'))


#Configuração do driver Capybara
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	config.default_driver = :selenium
	config.default_max_wait_time = 20
	Capybara.page.driver.browser.manage.window.maximize
end



