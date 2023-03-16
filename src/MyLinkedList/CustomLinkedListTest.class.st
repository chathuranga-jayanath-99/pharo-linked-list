Class {
	#name : #CustomLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinkedList
}

{ #category : #tests }
CustomLinkedListTest >> testAddMoreNodesToEmptyList [
	| ll n m | 
	ll := CustomLinkedList new . 
	n := Node new .
	n data: 8 .
	
	m := Node new .
	m data: 10 .
	
	ll add: n .
	ll add: m .
	self assert: ll head next data equals: 10 .
	
]

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
CustomLinkedListTest >> testContains [
	| ll n m p | 
	ll := CustomLinkedList new . 
	n := Node new .
	n data: 8 .
	
	m := Node new .
	m data: 10 .
	
	p := Node new .
	p data: 17 .
	
	ll add: n .
	ll add: m .
	ll add: p .
	self assert: (ll contains: 17) equals: true .
	
]

{ #category : #tests }
CustomLinkedListTest >> testGetLast [
	| ll n m | 
	ll := CustomLinkedList new . 
	n := Node new .
	n data: 8 .
	
	m := Node new .
	m data: 10 .
	
	ll add: n .
	ll add: m .
	self assert: ll getLast data equals: 10 .
	
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

{ #category : #tests }
CustomLinkedListTest >> testListSize [ 
	| ll n m | 
	ll := CustomLinkedList new . 
	n := Node new .
	n data: 8 .
	
	m := Node new .
	m data: 10 .
	
	ll add: n .
	ll add: m .
	self assert: ll getSize equals: 2 .
	
]
