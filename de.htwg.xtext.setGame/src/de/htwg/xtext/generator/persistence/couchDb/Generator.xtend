/*
 * generated by Xtext 2.10.0
 */
package de.htwg.xtext.generator.persistence.couchDb

import java.util.List
import de.htwg.xtext.generator.BaseGenerator
import de.htwg.xtext.generator.ClassGenerator
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class Generator extends BaseGenerator {
	
	new(String pkgPrefix) {
		super(pkgPrefix + "couchDb/")
	}
	
	override doGenerate(Resource input, IFileSystemAccess2 fsa, IGeneratorContext context) {
		super.doGenerate(input, fsa, context)
		new de.htwg.xtext.generator.persistence.couchDb.pojo.Generator(pkgPrefix).doGenerate(input, fsa, context)
	}
	
	override List<ClassGenerator> getList() {
		var list = super.list;
		list.add(new CardDaoCouchDbGenerator())
		list.add(new CardListDaoCouchDbGenerator())
		list.add(new CardOptionDaoCouchDbGenerator())
		list.add(new GameDaoCouchDbGenerator())
		list.add(new OptionDaoCouchDbGenerator())
		list.add(new OptionValueDaoCouchDbGenerator())
		list.add(new PlayerDaoCouchDbGenerator())
				
		list.add(new CouchDbManagerGenerator())
		return list
	}
}