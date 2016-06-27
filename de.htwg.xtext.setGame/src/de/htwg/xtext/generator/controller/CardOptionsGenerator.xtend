package de.htwg.xtext.generator.controller

import de.htwg.xtext.setGame.Option
import java.util.List

class CardOptionsGenerator {

	def name() {
		return "CardOptions.java"
	}

	def compile(List<Option> options) '''
		package de.htwg.se.setgame.controller.impl;
		
		import de.htwg.se.setgame.model.IOption;
		import de.htwg.se.setgame.model.IOptionValue;
		import de.htwg.se.setgame.util.persistence.OptionDao;
		import de.htwg.se.setgame.util.persistence.OptionValueDao;
		
		import java.util.LinkedHashSet;
		import java.util.LinkedList;
		import java.util.List;
		
		public class CardOptions {
		
		    private final OptionDao optionDao;
		    private final OptionValueDao optionValueDao;
		
		    /**
		     * @param optionDao Instance of OptionDao
		     * @param optionValueDao Instance of OptionValueDao
		     */
		    protected CardOptions(OptionDao optionDao, OptionValueDao optionValueDao) {
		        this.optionDao = optionDao;
		        this.optionValueDao = optionValueDao;
		    }
		    
		    protected List<IOption> getValues() {
		        List<IOption> list = new LinkedList<>();
		        «FOR option : options»
		        	create«option.name.toFirstUpper»(list);
		        «ENDFOR»
		        return list;
		    }
		    
		    private IOption createOption(String name, List<IOption> list) {
		        IOption option = optionDao.create();
		        option.setName(name);
		        optionDao.add(option);
		        list.add(option);
		        return option;
		    }
		
		    private IOptionValue createValue(IOption option, String value) {
		        IOptionValue entity = optionValueDao.create();
		        entity.setOption(option);
		        entity.setValue(value);
		        optionValueDao.add(entity);
		        return entity;
		    }
		    
		    «FOR o : options»
		    	«compileOption(o)»
		    «ENDFOR»
		}
	'''

	def private compileOption(Option option) '''
		private void create«option.name.toFirstUpper»(List<IOption> list) {
			IOption option = createOption("«option.name.toFirstUpper»", list);
			LinkedHashSet<IOptionValue> values = new LinkedHashSet<>();
			«FOR value : option.values»
				values.add(createValue(option, "«value»"));
			«ENDFOR»
			option.setOptionValues(values);
		}
		
	'''

}
