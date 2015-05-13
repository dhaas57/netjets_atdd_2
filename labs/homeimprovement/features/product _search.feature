Feature: Searching for a product

  Scenario: Perform an advanced product search by selecting no criteria
    When searching for no selected product criteria
    Then The product submit button is not enabled

  Scenario: Perform an advanced product search by selecting one criteria
    When searching on one product criteria
    Then a list of products is displayed based on the search criteria

  Scenario: Perform an advanced product search by selecting two criteria
    When searching on two product criteria
    Then a list of products is displayed based on the search criteria

  Scenario: Perform an advanced product search by selecting many criteria
    When searching on many product criteria
    Then a list of products is displayed based on the search criteria
