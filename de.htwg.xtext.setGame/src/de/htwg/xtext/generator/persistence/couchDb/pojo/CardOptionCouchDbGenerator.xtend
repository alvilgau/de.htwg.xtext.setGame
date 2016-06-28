package de.htwg.xtext.generator.persistence.couchDb.pojo

import de.htwg.xtext.generator.ClassGenerator

class CardOptionCouchDbGenerator implements ClassGenerator {

	override name() {
		return "CardOptionCouchDb.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.couchDb.pojo;
		
		import de.htwg.se.setgame.model.ICard;
		import de.htwg.se.setgame.model.IOptionValue;
		import de.htwg.se.setgame.model.impl.CardOption;
		import org.codehaus.jackson.annotate.JsonBackReference;
		
		/**
		 * @author Philipp Daniels
		 */
		public class CardOptionCouchDb extends CardOption {
		
		    @Override
		    @JsonBackReference
		    public ICard getCard() {
		        return super.getCard();
		    }
		
		    @Override
		    public IOptionValue getOption() {
		        return super.getOption();
		    }
		}
	'''
	
}