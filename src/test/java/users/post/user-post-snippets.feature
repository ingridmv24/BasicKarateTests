@ignore
Feature: Reusable scenarios for post a user

  @CreateUser
  Scenario:
    Given url "https://reqres.in/api/users/2"
    And request { "name": "Juan", "job": "QA Leader" }
    When method post
    Then status 201
    And def contactId = $.id
