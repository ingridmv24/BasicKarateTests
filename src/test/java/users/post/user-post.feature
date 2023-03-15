Feature: Post a user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "Ingrid", "job": "QA Automation Engineer" }

  Scenario: Post a user
    When method post
    Then status 201