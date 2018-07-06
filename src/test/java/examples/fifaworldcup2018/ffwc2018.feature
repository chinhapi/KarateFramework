Feature: Sample FIFA World Cup 2018 Russia APIs

  Scenario: Get all matches
    * url "https://raw.githubusercontent.com/openfootball/world-cup.json/master/2018/worldcup.json"
    Given method get
#    * print response
#    * def stadiums = $..stadium.name
#    * print stadiums
#    * def teams = $..team1.name
#    * print teams
    * def matches = $..matches[*]
    * print matches[?(@.num>49)]
#    * match matches[49].team1.name == 'France'
#    * match matches[49].team2.name == 'Argentina'

