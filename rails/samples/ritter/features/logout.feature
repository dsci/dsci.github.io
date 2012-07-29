Feature: Logout from ritter app
  In order to went away from my computer
  As a logged in user
  I want to log me out

  Background: Existing user is logged in
    Given my username is "dsci",my password is "123456" and my email is "dsci@code79.net"
    When I visit the ritter start page
    Then I should see the login form
    When I fill in "Username or email" with "dsci"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see that I'm logged in

  Scenario: Logout Successfull
    When I click "Sign out"
    Then I should see "Signed out successfully."
    And I should see the login form

