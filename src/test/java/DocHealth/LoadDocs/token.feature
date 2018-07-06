Feature: Load Health Data

  Background:
    * url someUrlBase
    * header Content-Type = 'application/json'
  Scenario Outline: get token
    Given path '/token'
    And form field grant_type = 'password'
    And form field username = 'chinhapi123@gmail.com'
    And form field password = '123'
    When method post
    Then status 200
    And def token = 'Bearer ' + response.access_token
    And print token

#   ////////////////getLoadData
    Given path '/api/PatientHealth/LoadHealthDocs'
    And header Authorization = token
    And header Content-Type = 'application/json'
#    * def loadData = Java.type('DocHealth.LoadDocs.LoadDataDocs.TestCaseForLoadDocs')
#    * def tam = new loadData()
#    * def result = tam.TestCaseForAddDocs()
      * def loadData =
      """
      function(){
        var load = Java.type('DocHealth.LoadDocs.LoadDataDocs.TestCaseForLoadDocs');
        var result = new load();
        return result.TestCaseForAddDocs();
      }
      """
      * def result = loadData()
      * def query = {medicalType: <medicalType>}

    And request query
    When method post
    Then status 200


    Given path '/api/PatientHealth/LoadHealthDocs'
    And header Authorization = token
    And header Content-Type = 'application/json'
    * def someFunction1 = read('classpath:DocHealth/LoadDocs/LoadOptionData.js')
    * def someCallResult1 = someFunction1(1)
    And request someCallResult1
    When method post
    Then status 200

    Examples:
    |medicalType|
    |      4     |
    |      3      |

     Examples:
    |medicalType|
    |      1     |