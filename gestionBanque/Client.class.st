Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'numeroCni',
		'nomClient',
		'age'
	],
	#category : #gestionBanque
}

{ #category : #getters }
Client >> age [
^age
]

{ #category : #setters }
Client >> age: unAge [
age := unAge
]

{ #category : #getters }
Client >> nomClient [
^nomClient
]

{ #category : #setters }
Client >> nomClient: unNomClient [
nomClient := unNomClient
]

{ #category : #getters }
Client >> numeroCni [
^numeroCni 
]

{ #category : #setters }
Client >> numeroCni: unNumeroCni [
numeroCni := unNumeroCni
]
