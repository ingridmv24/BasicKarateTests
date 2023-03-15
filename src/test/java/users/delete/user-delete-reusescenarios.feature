Feature: Delete a user on reqres

  Scenario: Delete a user
    * call read("../post/user-post-snippets.feature@CreateUser")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204