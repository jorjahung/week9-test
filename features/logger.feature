Feature: Logger

  Scenario: Front page
  Given I am on the homepage
  Then I should see a link to the sign in page
  And I should see a link to the sign up form 

  @javascript
  Scenario: Form in homepage
  Given I am on the homepage
  When I click "Sign up"
  Then the form should appear on the home page