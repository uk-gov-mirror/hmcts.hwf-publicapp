@e2e

Feature: Marital status page

  Background: Navigating to the marital status page
    Given I am on the marital status page

  Scenario: Selecting single
    When I submit the form as single
    Then I am taken to savings and investments page

  Scenario: Selecting married
    When I submit the form as married
    Then I am taken to savings and investments page

  Scenario: Help with status
    When I click on 'Help with status'
    Then I should see help with status copy