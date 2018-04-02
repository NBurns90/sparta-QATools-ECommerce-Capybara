require 'capybara'

class TempMail
  include Capybara::DSL

  attr_accessor :validation_link

  HOMEPAGE_URL = 'https://www.10minutemail.com'
  EMAIL_ADDRESS = '#mailAddress'
  VALIDATION_MESSAGE = "#ui-id-2"
  MESSAGE_BODY = "p.message"
  VALIDATION_LINK = ".vglnk"

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def get_address
    find(EMAIL_ADDRESS).value
  end

  def find_validation_link
    find(VALIDATION_MESSAGE, wait: 180).find(MESSAGE_BODY).find(VALIDATION_LINK)["href"]
  end

  def visit_url(url)
    visit(url)
  end

end
