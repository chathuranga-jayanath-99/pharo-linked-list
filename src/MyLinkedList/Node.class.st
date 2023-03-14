Class {
	#name : #Node,
	#superclass : #Object,
	#instVars : [
		'data',
		'next'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
Node >> data [ 
	^ data 
]

{ #category : #accessing }
Node >> data: aData [
	data := aData 
]

{ #category : #initialization }
Node >> initialize: aData [ 
	
	super initialize .
	data= aData 
]

{ #category : #accessing }
Node >> next [ 
	^ next 
]

{ #category : #accessing }
Node >> next: aNext [
	next := aNext 
]
