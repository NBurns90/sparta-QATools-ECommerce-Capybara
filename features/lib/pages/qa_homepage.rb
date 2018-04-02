require 'capybara'

class QAHomePage
  include Capybara::DSL

  attr_reader :home_page_url

  MY_ACCOUNT = 'My Account'

  def initialize
    @home_page_url = 'http://store.demoqa.com/'
  end

  def visit_home_page
    visit('/')
  end

  def visit_my_account
    click_link(MY_ACCOUNT)
  end

  def get_url
    current_url
  end

end
