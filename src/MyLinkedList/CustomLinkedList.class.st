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
