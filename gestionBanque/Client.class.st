Class {
	#name : #Client,
	#superclass : #Object,
	#instVars : [
		'id',
		'numeroCni',
		'nomClient',
		'age',
		'compte',
		'nom'
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
	uneSolde < 1
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

{ #category : #initialization }
Client >> initialize [ 
super initialize.
nom := ''.
id := 1.
compte := nil
]

{ #category : #getters }
Client >> nomClient [
^nomClient
]

{ #category : #setters }
Client >> nomClient: anObject [
nomClient := anObject
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

{ #category : #operations }
Client >> transferer: unMontant client: unClient [
(self compte etat) ifFalse: [ Transcript show: 'Ce compte a été bloqué';cr. ^false ].
	(unMontant < 1)
		ifTrue: [ ^false ]
		ifFalse: [ 
				(self retirer: unMontant)
					ifTrue: [ 
							(unClient depot: unMontant )
								ifTrue: [ ^true ]
								ifFalse: [ ^false ]
						 ]
			 ]
]
