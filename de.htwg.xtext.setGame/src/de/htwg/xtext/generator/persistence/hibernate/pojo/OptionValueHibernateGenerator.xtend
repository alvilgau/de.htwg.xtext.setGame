package de.htwg.xtext.generator.persistence.hibernate.pojo

import de.htwg.xtext.generator.ClassGenerator

class OptionValueHibernateGenerator implements ClassGenerator {

	override name() {
		return "OptionValueHibernate.java"
	}

	override compile() '''
		package de.htwg.se.setgame.util.persistence.hibernate.pojo;
		
		import de.htwg.se.setgame.model.IOption;
		import de.htwg.se.setgame.model.impl.OptionValue;
		
		import javax.persistence.*;
		
		/**
		 * @author Philipp Daniels
		 */
		@Entity
		@Table(name = "option_value")
		public class OptionValueHibernate extends OptionValue {
		
		    @Override
		    @Id
		    @GeneratedValue
		    public Integer getId() {
		        return super.getId();
		    }
		
		    @Override
		    @ManyToOne(targetEntity = OptionHibernate.class)
		    public IOption getOption() {
		        return super.getOption();
		    }
		
		    @Override
		    @Column
		    public String getValue() {
		        return super.getValue();
		    }
		}
	'''
	
}