Class {
	#name : #CustomLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #tests }
CustomLinkedListTest >> testAddNodeToEmptyList [
	| n ll | 
	n := Node new .
	n data: 8 .
	ll := CustomLinkedList new .
	ll add: n .
	self assert: ll head data equals: 8.
]

{ #category : #tests }
CustomLinkedListTest >> testAddNodeToNonEmptyList [
	| n m ll | 
	n := Node new .
	n data: 8 .
	
	m := Node new .
	m data: 10 .
	
	ll := CustomLinkedList new .
	ll add: n .
	ll add: m .
	self assert: ll head next data equals: 10 .
]

{ #category : #tests }
CustomLinkedListTest >> testHeadSetAndRead [ 
	| n ll | 
	n := Node new .
	n data: 8 .
	ll := CustomLinkedList new .
	ll head: n .
	self assert: ll head data equals: 8.
]
