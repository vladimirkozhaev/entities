/*
 * generated by Xtext
 */
package org.example.entities.formatting

import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter
import org.eclipse.xtext.formatting.impl.FormattingConfig
import com.google.inject.Inject
import org.example.entities.services.EntitiesGrammarAccess

// import com.google.inject.Inject;
// import org.example.entities.services.EntitiesGrammarAccess
/**
 * This class contains custom formatting description.
 * 
 * see : http://www.eclipse.org/Xtext/documentation.html#formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
class EntitiesFormatter extends AbstractDeclarativeFormatter {

	//	@Inject extension EntitiesGrammarAccess
	@Inject extension EntitiesGrammarAccess g

	override protected void configureFormatting(FormattingConfig c) {

		// formatting for entities
		val e = g.getEntityAccess()

		// indentation between { }
		c.setIndentation(e.getLeftCurlyBracketKeyword_3(), e.getRightCurlyBracketKeyword_5())

		// newline after {
		c.setLinewrap().after(e.getLeftCurlyBracketKeyword_3())

		// two newlines after }
		c.setLinewrap(2).after(e.getRightCurlyBracketKeyword_5())

		// formatting for attributes
		val a = g.getAttributeAccess()

		// newline after ;
		c.setLinewrap(1).after(a.getSemicolonKeyword_2())

		// remove possible spaces before the ;
		c.setNoSpace().before(a.getSemicolonKeyword_2())
	}
}
