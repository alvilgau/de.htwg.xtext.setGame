package de.htwg.xtext.generator

class OptionValueDaoGenerator {

	def name() {
		return "OptionValueDao.java"
	}

	def compile() '''
		package de.htwg.se.setgame.util.persistence;
		
		import de.htwg.se.setgame.model.IOptionValue;
		
		public interface OptionValueDao {
		
		    /**
		     * @return Return new IOption instance
		     */
		    IOptionValue create();
		
		    /**
		     * Add new entry
		     * @param value IOptionValue instance
		     */
		    void add(IOptionValue value);
		
		    /**
		     * Update existent entry
		     * @param value IOptionValue instance
		     */
		    void update(IOptionValue value);
		}
		
	'''
}
