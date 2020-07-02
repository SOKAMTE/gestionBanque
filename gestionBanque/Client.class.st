Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'id',
		'numeroCni',
		'nomClient',
		'age',
		'compte'
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
Client >> compte [
^compte
]

{ #category : #setters }
Client >> compte: unCompte [
compte := unCompte
]

{ #category : #operations }
Client >> depot: uneSolde [
self compte etat 
	ifFalse: [ ^false ].
	uneSolde<1
		ifTrue: [ ^false ]
		ifFalse: [ self compte solde: self compte + uneSolde. ^true ]
]

{ #category : #getters }
Client >> id [ 
^id
]

{ #category : #setters }
Client >> id: anObject [
id := anObject 
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

{ #category : #operations }
Client >> retirer: unMontant [
(self compte etat) ifFalse: [ Transcript show: 'Ce compte est bloqué';cr. ^false ].
	(unMontant < 1)
		ifTrue: [ ^false ]
		ifFalse: [ 
						(self compte solde > unMontant)
						ifFalse: [ Transcript show: 'Votre solde est insuffisante';cr. ^false]
						ifTrue: [ (self compte) solde: (self compte). unMontant. ^true]
					 ] 
				
]
