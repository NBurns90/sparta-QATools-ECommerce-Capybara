Before do
  @temp_email = temp_mail
  @homepage = qa_home_page
  @registration = qa_register_page
  @login = qa_account_page
end

Given("The user gets a temp mail") do
  @temp_email.visit_home_page
  @address = @temp_email.get_address
end

And("The user navigates to My Account") do
  @homepage.visit_home_page
  @homepage.visit_my_account
end

And("The user navigates to the Register page") do
  @login.visit_register
end

And("The user fills in the registration form") do
  @registration.fill_username(@address)
  @registration.fill_email(@address)
end

And("The user clicks register") do
  @registration.click_register_button
end

And("The user gets the activation link") do
  @temp_email.visit_home_page
  @temp_email.validation_link = @temp_email.find_validation_link
end

And("The user click the activation link") do
  @temp_email.visit_url(@temp_email.validation_link)
  sleep 2
end

When("The user resets password") do
  @registration.find_password
  sleep 2
  @registration.click_reset_password_button
end

Then("The user should be directed to the homepage") do
  @homepage.visit_home_page
  sleep 2
end

Given("The user is on the account page") do
  @homepage.visit_my_account
end

And("The user fills in username and password") do
  @login.fill_username(@address)
  @login.fill_password(@registration.password)
end

When("The user clicks login") do
  @login.click_login
end

Then("The user should be able to login") do
  expect(@login.current_url).to eq(@login.post_login_url)
end
