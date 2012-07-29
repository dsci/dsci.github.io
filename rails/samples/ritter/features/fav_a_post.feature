Feature: Adding a post as a fav of mine
  In order to remember posts I saw
  As registered user
  I want to mark a post as a 'favourite'

  Background: Existing user is logged in and posts exists
    Given the following posts exist:
      | text                                                        | author  |
      | Jemand sitzt auf meinen Jackenzipfel. Was tun? #tram #bvg   | jackass |
      | Bin kein Pessimist. Wäre aber gerne halb voll!              | penny   |
    Given my username is "dsci",my password is "123456" and my email is "dsci@code79.net"
    When I visit the ritter start page
    Then I should see the login form
    When I fill in "Username or email" with "dsci"
    And I fill in "Your Password" with "123456"
    And I press "Sign in"
    Then I should see that I'm logged in

  @javascript
  Scenario: Successfull mark a post as favourite
    Given I visit the ritter start page
    Then I should see "Jemand sitzt auf meinen Jackenzipfel. Was tun? #tram #bvg"
    And I should see "Bin kein Pessimist. Wäre aber gerne halb voll!"
    When I click at the star below "Jemand sitzt auf meinen Jackenzipfel. Was tun? #tram #bvg"
    Then I should see that I have "1" favourite
    When I click at the star below "Bin kein Pessimist. Wäre aber gerne halb voll!", then I should see that I have "2" favourites
