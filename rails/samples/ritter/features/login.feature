Feature: Logging into ritter app
  In order to use the ritter app features
  As registered user
  I want to login

  Background: Existing User wants to login
    Given my username is "dsci",my password is "123456" and my email is "dsci@code79.net"
    When I visit the ritter start page
    Then I should see the login form

  Scenario: Succcessfull login with Username
    When I fill in "Username or email" with "dsci"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see my username "dsci" and that I'm logged in

  Scenario: Successfull login with email address
    When I fill in "Username or email" with "dsci@code79.net"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see my username "dsci" and that I'm logged in
    
  Scenario: Unsuccessfull login with wrong username
    When I fill in "Username or email" with "_dsci"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see that I entered something wrong
    And I am back at the login page

  Scenario: Unsuccessfull login with wrong password
    When I fill in "Username or email" with "dsci"
    And I fill in "Your Password" with "qwrwzweu"
    And I press "Sign in"
    Then I should see that I entered something wrong
    And I am back at the login page
