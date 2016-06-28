package de.htwg.xtext.generator.persistence.db4o

import de.htwg.xtext.generator.ClassGenerator

class CardDaoDb4oGenerator implements ClassGenerator {

	override name() {
		return "CardDaoDb4o.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.db4o;
		
		import com.db4o.ObjectContainer;
		import de.htwg.se.setgame.model.ModelFactory;
		import de.htwg.se.setgame.model.ICard;
		import de.htwg.se.setgame.util.persistence.CardDao;
		
		/**
		 * @author Philipp Daniels
		 */
		public class CardDaoDb4o extends Db4oBase implements CardDao {
		
		    protected CardDaoDb4o(ObjectContainer db, ModelFactory factory) {
		        super(db, factory);
		    }
		
		    @Override
		    public ICard create() {
		        return getFactory().createCard();
		    }
		
		    @Override
		    public void add(ICard card) {
		        store(card.getCardList().getGame());
		    }
		
		    @Override
		    public void update(ICard card) {
		        if (card.getCardList() != null) {
		            store(card.getCardList().getGame());
		        }
		    }
		}
	'''
	
}