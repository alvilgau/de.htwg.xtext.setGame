package de.htwg.xtext.generator

interface ClassGenerator {
	
	def String name()
	
	def CharSequence compile()
}