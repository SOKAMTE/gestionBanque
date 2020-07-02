Class {
	#name : #Compte,
	#superclass : #Object,
	#instVars : [
		'numeroCompte',
		'nomCompte',
		'solde',
		'type',
		'etat'
	],
	#category : #gestionBanque
}

{ #category : #getters }
Compte >> etat [
^etat 
]

{ #category : #setters }
Compte >> etat: unEtat [
etat := unEtat
]

{ #category : #getters }
Compte >> nomCompte [
^nomCompte 
]

{ #category : #setters }
Compte >> nomCompte: unNomCompte [
nomCompte := unNomCompte 
]

{ #category : #getters }
Compte >> numeroCompte [
^numeroCompte 
]

{ #category : #setters }
Compte >> numeroCompte: unNumeroCompte [
numeroCompte := unNumeroCompte 
]

{ #category : #getters }
Compte >> solde [
^solde 
]

{ #category : #setters }
Compte >> solde: uneSolde [
solde := uneSolde 
]

{ #category : #getters }
Compte >> type [
^type 
]

{ #category : #setters }
Compte >> type: unType [
type := unType 
]
