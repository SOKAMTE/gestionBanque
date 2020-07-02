Class {
	#name : #Banque,
	#superclass : #Object,
	#instVars : [
		'nomBanque',
		'localisation',
		'clientList',
		'compteList'
	],
	#category : #gestionBanque
}

{ #category : #getters }
Banque >> clientList [
^clientList 
]

{ #category : #setters }
Banque >> clientList: unClientList [
clientList addFirst: unClientList 
]

{ #category : #getters }
Banque >> compteList [
^compteList 
]

{ #category : #setters }
Banque >> compteList: unCompteList [
compteList addFirst: unCompteList 
]

{ #category : #operations }
Banque >> creerCompte: unCompte client: unClient [
|compte client banque|
banque := self.
client := unClient.
compte := unCompte.

client compte: compte.
self compteList: compte.
self clientList: client.

client id: (banque clientList at: 1)id+1.
compte numeroCompte: (banque compteList at: 1)numeroCompte + 1
]

{ #category : #initialize }
Banque >> initialize [ 
super initialize.
compteList := OrderedCollection new.
clientList := OrderedCollection new
]

{ #category : #getters }
Banque >> localisation [
^localisation 
]

{ #category : #setters }
Banque >> localisation: uneLocalisation [
localisation := uneLocalisation 
]

{ #category : #getters }
Banque >> nomBanque [
^nomBanque 
]

{ #category : #setters }
Banque >> nomBanque: unNomBanque [
nomBanque := unNomBanque 
]
