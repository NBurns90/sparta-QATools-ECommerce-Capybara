Feature: QA Website
  as a user I want to be able to register on the site

  Scenario: A user should be able to register on the site
    Given The user gets a temp mail
      And The user navigates to My Account
      And The user navigates to the Register page
      And The user fills in the registration form
      And The user clicks register
      And The user gets the activation link
      And The user click the activation link
    When The user resets password
    Then The user should be directed to the homepage

  Scenario: As a user I should be able to login with valid credentials
    Given The user is on the account page
      And The user fills in username and password
    When The user clicks login
    Then The user should be able to login

  
