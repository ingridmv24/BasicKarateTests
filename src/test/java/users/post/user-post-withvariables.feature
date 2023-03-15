Feature: Post a user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * def var = { "name": "Ingrid", "job": "QA Automation Engineer" }

  Scenario: Post a user
    Given request var
    When method post
    Then status 201