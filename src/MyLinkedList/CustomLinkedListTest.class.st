Class {
	#name : #CustomLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #tests }
CustomLinkedListTest >> testHeadSetAndRead [ 
	| n ll | 
	n := Node new .
	n data: 8 .
	ll := CustomLinkedList new .
	ll head: n .
	self assert: ll head data equals: 8.
]
