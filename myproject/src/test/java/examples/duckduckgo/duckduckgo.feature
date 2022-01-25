Feature: karate duckduckgo
  Background:
    * url 'https://api.duckduckgo.com/'
	* configure ssl = true

  Scenario: Searching Toledo the source is Wikipedia and the link of the response is working
	Given param q = 'Toledo'
	And param format = 'json'
    When method get
    Then status 200
	And match response.AbstractSource == 'Wikipedia'
	And match response.AbstractURL == 'https://en.wikipedia.org/wiki/Toledo'
	* def wikiURL = response.AbstractURL
	Given url wikiURL
	When method get
	Then status 200
	
  