package org.example.xtendexamples

import java.util.LinkedList

class MyFirstXtendClasses {
	def static void main(String[] args) {
		println("Hello World")
	}

	val s = 'my field' // final field
	var myList = new LinkedList<Integer> // non final field

	def bar(String input) {
		var buffer = input
		buffer == s || myList.size > 0

	// the last expression is the return expression
	}
}
