package de.htwg.xtext.generator.persistence.db4o

import de.htwg.xtext.generator.ClassGenerator

class CardOptionDaoDb4oGenerator implements ClassGenerator {

	override name() {
		return "CardOptionDaoDb4o.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.db4o;
		
		import com.db4o.ObjectContainer;
		import de.htwg.se.setgame.model.ICardOption;
		import de.htwg.se.setgame.model.ModelFactory;
		import de.htwg.se.setgame.util.persistence.CardOptionDao;
		
		/**
		 * @author Philipp Daniels
		 */
		public class CardOptionDaoDb4o extends Db4oBase implements CardOptionDao {
		
		    protected CardOptionDaoDb4o(ObjectContainer db, ModelFactory factory) {
		        super(db, factory);
		    }
		
		    @Override
		    public ICardOption create() {
		        return getFactory().createCardOption();
		    }
		
		    @Override
		    public void add(ICardOption cardOption) {
		
		    }
		
		    @Override
		    public void update(ICardOption cardOption) {
		
		    }
		}
	'''
	
}