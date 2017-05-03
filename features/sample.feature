
Feature: Weblog

  Scenario: Create a weblog
    Given that the website is up
    When I create a weblog with the following details:
    """
      {
        "title": "ABC",
        "description": "ABC description" 
      }
    """
    Then the weblog should be created
    And the weblog should contains
    """
      {
        "title": "ABC",
        "description": "ABC description" 
      }
    """

