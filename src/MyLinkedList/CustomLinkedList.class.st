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
		cur := aNode .
		^ nil ].
	[ cur next isNil ] whileFalse: [ cur := cur next ].
	cur next: aNode .
	^ nil
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

	| cur |
	cur := head.
	[ cur isNil ] whileFalse: [ 
		Transcript show: cur data.
		Transcript space.
		cur := cur next ].

]
