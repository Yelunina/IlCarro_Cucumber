Feature: Login

  @validData
  Scenario: Login with valid data
    Given User launches Chrome browse
    When User opens ilCarro HomePage
    And User clicks on Login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verifies Success Message is displayed
    And User quites browser


  @invalidPassword
  Scenario Outline: Login with valid email and invalid password
    Given User launches Chrome browse
    When User opens ilCarro HomePage
    And User clicks on Login link
    And User enters valid email and invalid password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error is displayed
    And User quites browser
    Examples:
      | email            | password     |
      | yelunina@ukr.net | Yelunina1234 |
      | yelunina@ukr.net | Y1234444444$ |
      | yelunina@ukr.net | elunina1234$ |
      | yelunina@ukr.net | Yelunina!!!! |

