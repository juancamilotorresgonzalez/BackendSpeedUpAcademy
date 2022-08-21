Feature: Get service client
  As QA automation
  I want to consult a client
  To validate the status code and response

  Background: consuming service
    * url url

  Scenario: Check the service GET method
    * def responseGet = read('classpath:karate/request/responseClient.json')
    Given path 'users', '2'
    When method get
    Then status 200
    And match response == responseGet
    * assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
    * assert response.data.email == email


    Scenario Outline: User that don't exist
      Given path 'users', <idUser>
      When method get
      Then status 404
      Examples:
        | idUser  |
        | 1996    |
        | "#&%?." |
        | "Edwin" |