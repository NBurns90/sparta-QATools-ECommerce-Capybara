require 'capybara'

class QARegisterPage
  include Capybara::DSL

  attr_reader :register_page_url, :password

  REGISTER_BUTTON = 'wp-submit'
  USERNAME_FIELD = 'user_login'
  EMAIL_FIELD = 'user_email'
  PASSWORD_FIELD = '#pass1'
  RESET_PASSWORD_BUTTON = 'Reset Password'

  def initialize
    @register_page_url = 'http://store.demoqa.com/wp-login.php?action=register'
    @registration_complete_message = '	Registration complete. Please check your email.'
  end

  #fill in fields
  def fill_username(username)
    fill_in(USERNAME_FIELD, with: username)
  end

  def fill_email(email)
    fill_in(EMAIL_FIELD, with: email)
  end

  def find_password
    @password = find(PASSWORD_FIELD)["data-pw"]
  end

  #buttons
  def click_register_button
    click_button(REGISTER_BUTTON)
  end

  def click_reset_password_button
    click_button(RESET_PASSWORD_BUTTON)
  end

  #get data
  def get_confirmation_message
    find(:css, 'message').text
  end

  def get_url
    current_url
  end

end
