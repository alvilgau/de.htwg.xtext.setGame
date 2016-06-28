package de.htwg.xtext.generator.persistence.hibernate

import de.htwg.xtext.generator.ClassGenerator

class CardOptionDaoHibernateGenerator implements ClassGenerator {

	override name() {
		return "CardOptionDaoHibernate.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.hibernate;
		
		import de.htwg.se.setgame.model.ICardOption;
		import de.htwg.se.setgame.util.persistence.CardOptionDao;
		import de.htwg.se.setgame.util.persistence.hibernate.pojo.CardOptionHibernate;
		
		/**
		 * @author Philipp Daniels
		 */
		public class CardOptionDaoHibernate implements CardOptionDao {
		
		    private final HibernateBase db;
		
		    protected CardOptionDaoHibernate(HibernateBase db) {
		        this.db = db;
		    }
		
		    @Override
		    public ICardOption create() {
		        return new CardOptionHibernate();
		    }
		
		    @Override
		    public void add(ICardOption cardOption) {
		        db.persist(cardOption);
		    }
		
		    @Override
		    public void update(ICardOption cardOption) {
		        db.persist(cardOption);
		    }
		}
	'''
	
}