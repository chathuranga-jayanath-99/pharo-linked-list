Class {
	#name : #CustomLinkedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
CustomLinkedList >> add: aNode [

	| cur |
	cur := head.

	cur ifNil: [ 
		head := aNode .
		^ nil ].
	[ cur next isNil ] whileFalse: [ cur := cur next ].
	cur next: aNode .
	^ nil
]

{ #category : #accessing }
CustomLinkedList >> contains: aData [

	| cur |
	cur := head.
	cur ifNil: [ ^ false ] ifNotNil: [ 
		[ cur next isNotNil ] whileTrue: [ 
			cur := cur next.
			(cur data == aData) ifTrue: [ ^ true ] ] ].
	^ false
]

{ #category : #accessing }
CustomLinkedList >> getLast [

	| cur |
	cur := head.
	cur ifNotNil: [ [ cur next isNotNil ] whileTrue: [ cur := cur next ] ].
	^ cur
]

{ #category : #accessing }
CustomLinkedList >> getSize [ 
	| n cur |
	cur := head .
	n := 0 .
	
	[ cur isNotNil ] whileTrue: [ 
		cur := cur next .
		n := n + 1 .
	 ] .
	^ n.
]

{ #category : #accessing }
CustomLinkedList >> head [ 
	
	^ head 
]

{ #category : #accessing }
CustomLinkedList >> head: aHead [ 
	head := aHead 
]

{ #category : #accessing }
CustomLinkedList >> initialize [ 
	head := nil
]

{ #category : #accessing }
CustomLinkedList >> traverse [

	| cur res|
	res := OrderedCollection new.
	cur := head.
	[ cur isNil ] whileFalse: [ 
		Transcript show: cur data.
		Transcript space.
		res add: cur data.
		cur := cur next ].
	^ res 
]
