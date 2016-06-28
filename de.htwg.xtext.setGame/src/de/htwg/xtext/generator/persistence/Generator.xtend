/*
 * generated by Xtext 2.10.0
 */
package de.htwg.xtext.generator.persistence

import java.util.List
import de.htwg.xtext.generator.BaseGenerator
import de.htwg.xtext.generator.ClassGenerator
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import de.htwg.xtext.setGame.Persistence

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class Generator extends BaseGenerator {
	
	new(String pkgPrefix) {
		super(pkgPrefix + "util/persistence/")
	}
	
	override doGenerate(Resource input, IFileSystemAccess2 fsa, IGeneratorContext context) {
		super.doGenerate(input, fsa, context)
		
		for (e: input.allContents.toIterable.filter(Persistence)) {
			handleAlternatives(e, input, fsa, context)
		}
	}
	
	def private handleAlternatives(Persistence p, Resource input, IFileSystemAccess2 fsa, IGeneratorContext context) {
		switch p.value {
			case COUCHDB: {
				new de.htwg.xtext.generator.persistence.couchDb.Generator(pkgPrefix).doGenerate(input, fsa, context)
			}
			case DB4O: {
				
			}
			case HIBERNATE: {
				
			}
		}
	}
	
	override List<ClassGenerator> getList() {
		var list = super.list;
		list.add(new CardDaoGenerator())
		list.add(new CardListDaoGenerator())
		list.add(new CardOptionDaoGenerator())
		list.add(new GameDaoGenerator())
		list.add(new OptionDaoGenerator())
		list.add(new OptionValueDaoGenerator())
		list.add(new PlayerDaoGenerator())
		list.add(new DaoManagerGenerator())
		return list
	}
}
