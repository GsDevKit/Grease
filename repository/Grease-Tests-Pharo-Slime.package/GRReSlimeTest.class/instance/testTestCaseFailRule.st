tests-transform
testTestCaseFailRule

	| class |
	class := self defineSubClassOf: #TestCase.
	self compile: 'testMethod self fail' in: class.
	self 
		runTransformation: GRTestAssertionsRule
		changes: #(
			'testMethod self assert: false' )