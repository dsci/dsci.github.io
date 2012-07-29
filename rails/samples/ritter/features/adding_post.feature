Feature: Adding a post to my timeline
  In order to tell my friends what I currently do
  As registered user
  I want to add a post

  Background: Existing user is logged in
    Given my username is "dsci",my password is "123456" and my email is "dsci@code79.net"
    When I visit the ritter start page
    Then I should see the login form
    When I fill in "Username or email" with "dsci"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see that I'm logged in

  Scenario: Successfull composing a post
    When I see the post form
    And I fill in "Write a post" with "*Currently* it rains like cats and dogs"
    And I press "Ritterize that"
    Then I should see "You composed your post successfully."
    And I should see "<p><strong>Currently</strong> it rains like cats and dogs</p>" on my timeline
    And I should see "You have 1 post(s) at all."
    When I add another post "The second I want to write", I should see "You have 2 post(s) at all."
