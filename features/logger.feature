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

  Scenario: Signing up successfully
    Given I am on the homepage
    And I click "Sign up"
    When I fill in the sign up form
    And I click "Submit"
    Then I should see "You have signed up successfully."

  Scenario: Signing up successfully
    Given I am on the homepage
    And I click "Sign up"
    When I fill in the sign up form without a password
    And I click "Submit"
    Then I should see "Password can't be blank"

  Scenario: Log count
    Given I have signed up successfully
    When I go to the log in count page
    Then I should see the times I have been signed in

  Scenario: Redirecting to log count
    Given I have signed up successfully
    Then I should be in the log in counter

  Scenario: Signing out
    Given I have signed up successfully
    When I click "Sign out"
    Then I should see "Goodbye!"
