Feature: Put a user on reqres

  Scenario: Put a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    And request { "name": "Maria","job": "Developer" }
    When method put
    Then status 200
    And match $.name == 'Maria'