@e2e

Feature: Common behaviour

  Background: Navigating to the page for step one
    Given probate is enabled
    And I am on the form number page

  Scenario: Please note is displayed
    Then I should see the please note copy

  Scenario: Cancel application
    And I click on cancel application
    And I see the are you sure copy
    When I click on yes, cancel
    Then I am taken to the Help with Fees homepage

  Scenario: Return to current application
    And I click on cancel application
    When I click on no, return to current application
    Then I should not see the cancel application options
    And I should remain on the page
