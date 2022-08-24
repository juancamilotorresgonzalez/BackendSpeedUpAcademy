Feature: Create a new user
  As QA automation
  I want create a new user
  To valid the status code and response

  Background: consume the service
    * url url

    Scenario: Check the services by POST method

      * def responsePost = read('classpath:karate/request/create/responsePost.json')

      Given path 'users'
      And def jsonBody = read('classpath:karate/request/create/PostData.json')
      And request jsonBody
      When method post
      Then status 201
      And match response == responsePost
      And assert response.Time < 500
      And assert response.name == name
      And assert response.job == job

    Scenario Outline: Validate with invalid POST request

      Given path 'users'
      And request <wrongrequest>
      When method post
      Then status <statuscode>

      Examples:

      |wrongrequest|statuscode|
      |'696969'     |201       |
      |'xxxx'      |201       |
