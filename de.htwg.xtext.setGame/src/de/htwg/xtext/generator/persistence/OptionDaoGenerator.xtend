package de.htwg.xtext.generator.persistence

import de.htwg.xtext.generator.ClassGenerator

class OptionDaoGenerator implements ClassGenerator {
	
	override name() {
		return "OptionDao.java"
	}
	
	override compile() '''
		package de.htwg.se.setgame.util.persistence;
		
		import de.htwg.se.setgame.model.IOption;
		
		/**
		 * @author Philipp Daniels
		 */
		public interface OptionDao {
		
		    /**
		     * @return Return new IOption instance
		     */
		    IOption create();
		
		    /**
		     * Add new entry
		     * @param option IOption instance
		     */
		    void add(IOption option);
		
		    /**
		     * Update existent entry
		     * @param option IOption instance
		     */
		    void update(IOption option);
		}
	'''
}