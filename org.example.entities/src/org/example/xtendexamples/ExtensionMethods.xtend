package org.example.xtendexamples

import java.util.List
import java.util.ArrayList

class ExtensionMethods {
	def myListMethod(List<?> list) {
		// some implementation
	}

	def m() {
		val list = new ArrayList<String>
		list.myListMethod
	}
}
