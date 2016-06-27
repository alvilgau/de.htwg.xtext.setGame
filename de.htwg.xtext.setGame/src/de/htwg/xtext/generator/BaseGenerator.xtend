package de.htwg.xtext.generator

import org.eclipse.xtext.generator.AbstractGenerator
import java.util.List
import java.util.LinkedList
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext

abstract class BaseGenerator extends AbstractGenerator {
	
	private String pkgPrefix

	new(String pkgPrefix) {
		this.pkgPrefix = pkgPrefix
	}
	
	override doGenerate(Resource input, IFileSystemAccess2 fsa, IGeneratorContext context) {
		for (ClassGenerator g: list) {
			fsa.generateFile(pkgPrefix + g.name(), g.compile())
		}
	}
	
	def List<ClassGenerator> getList() {
		return new LinkedList<ClassGenerator>()
	}
}