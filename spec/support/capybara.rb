require 'capybara/poltergeist'

headless = true

# headless debugging:
# print page.html
# page.driver.debug
# save_and_open_page

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new app, inspector: true
end

Capybara.javascript_driver = headless ? :poltergeist : :chrome
