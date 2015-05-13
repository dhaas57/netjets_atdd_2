Feature: Searching for a contractor

  Scenario: Perform a contractor search by selecting no criteria
    When searching for no selected contractor criteria
    Then The contractor submit button is not enabled

  Scenario: Perform a contractor search by selecting one criteria
    When searching on one contractor criteria
    Then a list of contractors is displayed based on the search criteria


  Scenario: Perform a contractor search by selecting two criteria
    When searching on two contractor criteria
    Then a list of contractors is displayed based on the search criteria


  Scenario: Perform a contractor search by selecting many criteria
    When searching on many contractor criteria
    Then a list of contractors is displayed based on the search criteria
