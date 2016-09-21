Feature: people take a class

#he seems to only ever teaach these two classes, but could be more
#sometimes teaches more than one section

#for fall 2016: 
	#211 - 10902 Prerequisite: ACCT 210 with a grade of "C" or better.
	#324 - 10903 Prerequisites: ACCT 210, BUSA 120, both with grade of "C" or better.

	#Scenario: Dr. Clements enters ACCT 211 's CRN
		#Given the user inputs 10902
		#Then students "000174094,000795431,000154209,000266038,000349651,000586124,000325258,000825441,000634288" should not be in the class

	#Scenario: Dr. Clements enters ACCT 324 's CRN

	#Scenario: student takes a class
		#Given course "ACCT211" has prerequesites "ACCT210,C"
		#And course "ACCT324" has prerequesites "ACCT210,C,BUSA120,C"
		#And student "000000001" has taken courses "ACCT210" with grade "C"
		#Then student "000000001" has taken 1 course
		#And student "000000001" may take "ACCT211"
		#And student "000000001" may not take "ACCT324"

	#Scenario:
		#Given course "ACCT211" has prerequesites "ACCT210,C"
		#And a student "000000004" has taken courses "ACCT210" with grade "B"
		#And a student "000000002" has taken courses "ACCT209" with grade "A"
		#Then course "ACCT211" has 2 prerequesites
		#And student "000000004" may take "ACCT211"
		#And student "000000002" may not take "ACCT211"

	Scenario: info about ACCT211
		Given course "ACCT211" has prerequesites "ACCT210,C"
		Then the prerequesites for "ACCT211" are "ACCT210,C"

	Scenario: info about ACCT211
		Given course "ACCT324" has prerequesites "ACCT210,C,BUSA120,C"
		Then the prerequesites for "ACCT324" are "ACCT210,C,BUSA120,C"

	Scenario: info about fake class DET410
		Given course "DET410" has prerequesites "DET000,DET100,C"
		Then the prerequesites for "DET410" are "DET000,D,DET100,C"

	Scenario: info about IT110
		Given course "IT110" has prerequesites ""
		Then the prerequesites for "IT110" are ""

	Scenario: info about student
		Given student "000000001"
		And course "ACCT210" grade "A"
		Then their transcript should read "ACCT210,A"
