Class {
	#name : #CustomLinkedList,
	#superclass : #Object,
	#instVars : [
		'head'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
CustomLinkedList >> head [ 
	
	^ head 
]

{ #category : #accessing }
CustomLinkedList >> head: aHead [ 
	head := aHead 
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
