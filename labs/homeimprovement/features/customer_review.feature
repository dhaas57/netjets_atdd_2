Feature: Read customer reviews on a product


  Scenario: Access the customer reviews per a rating selection
    Given a product is selected
    When A rating is selected
    Then only reviews based on the rating is displayed

  Scenario: Access one customer review
    Given a product is selected
    When one product is selected
    Then that product review is displayed