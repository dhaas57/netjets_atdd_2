Feature: Find a store's detail information

  Scenario: Perform a store search by selecting one criteria
    Given a product is selected
    When searching on one store criteria
    Then a list of stores is displayed based on search criteria

  Scenario: Perform a store search by selecting two criteria
    Given a product is selected
    When searching on two store criteria
    Then a list of stores is displayed based on search criteria

  Scenario: Perform a store search by selecting many criteria
    Given a product is selected
    When searching on many store criteria
    Then a list of stores is displayed based on search criteria