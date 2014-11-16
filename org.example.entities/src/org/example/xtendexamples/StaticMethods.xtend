package org.example.xtendexamples

import java.util.Collections

class StaticMethods {
	def static void main(String[] args) {
		val list = Collections::emptyList
		System::out.println(list)
	}
}
