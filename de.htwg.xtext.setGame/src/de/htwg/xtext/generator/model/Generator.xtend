/*
 * generated by Xtext 2.10.0
 */
package de.htwg.xtext.generator.model

import de.htwg.xtext.generator.model.IOptionGenerator
import de.htwg.xtext.generator.model.IOptionValueGenerator
import java.util.List
import de.htwg.xtext.generator.BaseGenerator
import de.htwg.xtext.generator.ClassGenerator

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class Generator extends BaseGenerator {

	new(String pkgPrefix) {
		super(pkgPrefix + "model/")
	}

	override List<ClassGenerator> getList() {
		var list = super.list;
		list.add(new ICardGenerator())
		list.add(new ICardListGenerator())
		list.add(new ICardOptionGenerator())
		list.add(new IGameGenerator())
		list.add(new IOptionGenerator())
		list.add(new IOptionValueGenerator())
		list.add(new IPlayerGenerator())
		return list
	}
}
