Class {
	#name : #TestCompte,
	#superclass : #TestCase,
	#category : #gestionBanque
}

{ #category : #tests }
TestCompte >> testFerme [
self assert: (Compte new ferme) etat equals: false
]

{ #category : #tests }
TestCompte >> testOuvrir [
self assert: (Compte new ouvrir) etat equals: true
]
