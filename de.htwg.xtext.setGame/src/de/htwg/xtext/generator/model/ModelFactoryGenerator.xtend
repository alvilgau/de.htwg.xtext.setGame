package de.htwg.xtext.generator.model

import de.htwg.xtext.generator.ClassGenerator

class ModelFactoryGenerator implements ClassGenerator {

	override name() {
		return "ModelFactory.java"
	}

	override compile() '''
		package de.htwg.se.setgame.model;
		
		/**
		 * @author Philipp Daniels
		 */
		public interface ModelFactory {
		
		    /**
		     * @return Return new ISet instance
		     */
		    ISet createSet();
		
		    /**
		     * @return Return new ICardList instance
		     */
		    ICardList createCardList();
		
		    /**
		     * @return Return new ICard instance
		     */
		    ICard createCard();
		
		    /**
		     * @return Return new IPlayer instance
		     */
		    IPlayer createPlayer();
		
		    /**
		     * @return Return new IGame instance
		     */
		    IGame createGame();
		
		    /**
		     * @return Return new IOption instance
		     */
		    IOption createOption();
		
		    /**
		     * @return Return new IOptionValue instance
		     */
		    IOptionValue createOptionValue();
		
		    /**
		     * @return Return new ICardOption instance
		     */
		    ICardOption createCardOption();
		}
	'''
}
