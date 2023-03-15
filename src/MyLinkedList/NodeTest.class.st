Class {
	#name : #NodeTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #tests }
NodeTest >> testDataSetAndRead [ 
	| n |
	n := Node new. 
	n data: 8.
	self assert: n data equals: 8
]

{ #category : #tests }
NodeTest >> testNextSetAndRead [ 
	| n m |
	n := Node new. 
	m := Node new.
	n data: 8.
	n next: m.
	self assert: n next isNotNil.
]
