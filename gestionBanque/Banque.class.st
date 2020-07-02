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
