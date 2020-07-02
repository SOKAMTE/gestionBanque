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
"Il est permet de savoir si un compte est: soit ouvert ou soit fermé"
^etat 
]

{ #category : #setters }
Compte >> etat: aBoolean [
etat := aBoolean  
]

{ #category : #operations }
Compte >> ferme [
self etat: false
]

{ #category : #initialization }
Compte >> initialize [ 
"initialement la solde présent dans le compte est à 0"
solde := 0.
"initialement le compte est ouvert, donc etat est à true"
etat := true
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

{ #category : #operations }
Compte >> ouvrir [
self etat: true
]

{ #category : #getters }
Compte >> solde [
^solde 
]

{ #category : #setters }
Compte >> solde: uneSolde [
"Si etat est à true le compte est ouvert, si etat est à false le compte est fermé"
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
