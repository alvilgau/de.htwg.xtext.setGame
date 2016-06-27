package de.htwg.xtext.generator.persistence

import de.htwg.xtext.generator.ClassGenerator

class DaoManagerGenerator implements ClassGenerator {
	
	override name() {
		return "DaoManager.java"
	}
	
	override compile() '''
		package de.htwg.se.setgame.util.persistence;

		import de.htwg.se.setgame.model.IOption;

		public interface DaoManager {

		    /**
			 * @return Return instance of CardDao
			 */
			CardDao getCard();

		    /**
		     * @return Return instance of CardListDao
		     */
		    CardListDao getCardList();

		    /**
		     * @return Return instance of PlayerDao
		     */
		    PlayerDao getPlayer();

		    /**
		     * @return Return instance of GameDao
		     */
		    GameDao getGame();

		    /**
		     * @return Return instance of OptionDao
		     */
		    OptionDao getOption();

		    /**
		     * @return Return instance of OptionValueDao
		     */
		    OptionValueDao getOptionValue();

		    /**
		     * @return Return instance of CardOptionDao
		     */
		    CardOptionDao getCardOption();

		    /**
		     * Trigger to close database connections
		     */
		    void exit();
		}
	'''
}