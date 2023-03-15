Feature: Post a user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    * request { "name": "#(na,e)", "#(job)": "#(job)" }

  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
      | name    | job       |
      | luciana | doctor    |
      | ana     | developer |
      | ingrid  | engineer  |

