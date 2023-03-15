Feature: Get a user on reqres

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method get
    Then status 200


  Scenario: Get list of users
    * def jsonResponse = read("../json/list_of_users.json")
    Given url "https://reqres.in/api/users?page=2"
    When method get
    Then status 200
    And match $ == jsonResponse
    And match $ == read("../json/list_of_users.json")
