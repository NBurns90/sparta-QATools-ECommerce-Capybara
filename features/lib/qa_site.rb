require_relative 'pages/qa_homepage'
require_relative 'pages/qa_account'
require_relative 'pages/qa_register'

module QASite

  def qa_home_page
    QAHomePage.new
  end

  def qa_account_page
    QAAccountPage.new
  end

  def qa_register_page
    QARegisterPage.new
  end

end
