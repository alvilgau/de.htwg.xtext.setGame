package de.htwg.xtext.generator

class OptionDaoGenerator {
	
	def name() {
		return "OptionDao.java"
	}
	
	def compile() '''
		package de.htwg.se.setgame.util.persistence;
		
		import de.htwg.se.setgame.model.IOption;
		
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