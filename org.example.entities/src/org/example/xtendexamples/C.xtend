package org.example.xtendexamples

import java.util.ArrayList

class C {
	extension MyListExtensions e = new MyListExtensions

	def m() {
		val list = new ArrayList<String>
		list.aListMethod
		list.anotherListMethod
	}
}
