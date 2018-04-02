require 'capybara'

class QAAccountPage
  include Capybara::DSL

  attr_reader :account_page_url :post_login_url

  REGISTER = 'Register'
  USERNAME_FIELD = 'log'
  GET_USERNAME = '#log'
  PASSWORD_FIELD = 'pwd'
  GET_PASSWORD = '#pwd'
  LOGIN_BUTTON = '#login'

  def initialize
    @account_page_url = 'http://store.demoqa.com/products-page/your-account/'
    @post_login_url = 'http://store.demoqa.com/wp-admin/profile.php'
  end

  def visit_register
    click_link(REGISTER)
  end

  def fill_username(username)
    fill_in(USERNAME_FIELD, with: username)
  end

  def fill_password(password)
    fill_in(PASSWORD_FIELD, with: username)
  end

  def click_login
    click_button(LOGIN_BUTTON)
  end

  def get_url
    current_url
  end

end
