package de.htwg.xtext.generator.persistence.couchDb.pojo

import de.htwg.xtext.generator.ClassGenerator

class OptionValueCouchDbGenerator implements ClassGenerator {

	override name() {
		return "OptionValueCouchDb.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.couchDb.pojo;
		
		import de.htwg.se.setgame.model.IOption;
		import de.htwg.se.setgame.model.impl.OptionValue;
		import org.codehaus.jackson.annotate.JsonManagedReference;
		
		/**
		 * @author Philipp Daniels
		 */
		public class OptionValueCouchDb extends OptionValue {
		
		    @Override
		    @JsonManagedReference
		    public IOption getOption() {
		        return super.getOption();
		    }
		
		    @Override
		    public String getValue() {
		        return super.getValue();
		    }
		}
	'''
	
}