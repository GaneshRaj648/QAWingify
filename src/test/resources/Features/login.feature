Feature: To Validate the login functionality with valid crendentials

	Scenario Outline: To validate the login functinality with valid crendentials
	Given the user should be in login page
	When the user  has to enter valid "<Username>" and "<password>"
	And the user has to click the login button
	Then the user has to successfully login into the page
	Then the user has to click the amount header to sort it.
	Then the user has to quit the page
	  
	  
	  Examples:
	  |Username|password|
	  
	  |GaneshRaj|9043650751|
	  |GANESHRAJ|Gane90436|
	  |GANESH RAJ|Gane@90436|
	  |GANESH@RAJ|Gane@0 43|
	  |GANESH@#RAJ|Gane@9043|
	  |GANESH@#$%RAJ|Gane@0 43|
	  |GANESH@1RAJ|Gane@0 43|
	  |GANESH@#1RAJ|Gane@0 43|
	  |GANESH@#12RAJ|Gane$ $90436|
	  |GANESH@#&&12345RAJ|Gane 0436|
	  |GANESH @RAJ|Gane   90436|
	  |GANESH @#RAJ|gamil.com|
	  |GANESH @#$% RAJ|www.ganesh.com|
	  |GANESH @#&& 12345 RAJ|ganes@ 1239|
	  |ganesh @raj|Ganesh@ 1236|
	  |ganesh @#raj|Ganesh@ 1236|
	  |ganesh @#$% raj|Ganesh@1236|
	  |ganesh @#&& 12345 raj|Ganesh@ 1236 RAJ|
	  |ganeshraj|Ganesh@ 1236 RAJ|
	  |ganesh@raj|Ganesh@ 1236 RA|
	  |ganesh@#raj|Ganesh@ 1236 Raj|
	  |ganesh@#$%raj|9043650751|
	  |ganesh@1raj|9043650751|
	  |ganesh@#1raj|9043650751|
	  |ganesh@#12raj|9043650751|
	  |ganesh@#&&12345raj|9043650751|
	  |Ganeshraj|9043650751|
	  |Ganesh@raj|9043650751|
	  |Ganesh@#raj|9043650751|
	  |Ganesh@#$%raj|9043650751|
	  |Ganesh@1raj|9043650751|
	  |Ganesh@#1raj|9043650751|
	  |Ganesh@#12raj|9043650751|
	  |Ganesh@#&&12345raj|9043650751|
	  |GaneshRaj|9043650751|
	  |Ganesh@Raj|9043650751|
	  |Ganesh@#Raj|9043650751|
	  |Ganesh@#$%Raj|9043650751|
	  |Ganesh@1Raj|9043650751|
	  |Ganesh@#1Raj|9043650751|
	  |Ganesh@#12Raj|9043650751|
	  |Ganesh@#&&12345Raj|9043650751|
	  
	  
	  
	  
	  