Feature: Login
  As QA automation
  I want login
  To valid the status code and response

  Background: consume the service
    * url url

  Scenario: Check login to POST method

    * def dataBody = read ('classpath:karate/request/login/loginRequest.json')
    * def responseLogin = read ('classpath:karate/request/login/responseLogin.json')


    Given path 'login'
    And request dataBody
    When method post
    Then status 200
    And match response == responseLogin
    And assert response.Time < 500


  Scenario: Login unsuccessful to POST method

    * def emailBody = read('classpath:karate/request/login/loginUnsuccessful.json')
    * def responseUnsuccessful = read('classpath:karate/request/login/responseUnsuccessful.json')

    Given path 'login'
    And request emailBody
    When method post
    Then status 400
    And match response == responseUnsuccessful
    And assert response.Time < 500
