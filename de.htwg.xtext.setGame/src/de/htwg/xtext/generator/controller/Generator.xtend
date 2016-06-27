package de.htwg.xtext.generator.controller

import de.htwg.xtext.generator.BaseGenerator
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import de.htwg.xtext.setGame.Option

class Generator extends BaseGenerator {

	new(String pkgPrefix) {
		super(pkgPrefix + "controller/impl/")
	}

	override doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		super.doGenerate(resource, fsa, context)

		val options = resource.allContents.filter(Option).toList
		val generator = new CardOptionsGenerator();
		fsa.generateFile(pkgPrefix + generator.name(), generator.compile(options))
	}
}