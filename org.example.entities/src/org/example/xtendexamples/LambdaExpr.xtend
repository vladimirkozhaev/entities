package org.example.xtendexamples

import java.util.Collections

class LambdaExpr {
	def static execute((String, int)=>String f) {
		f.apply("s", 10)
	}

	def static void main(String[] args) {
		val c = "aaa"
		println(execute([s, i|s + i + c])) // prints s10aaa
		val list = newArrayList("Second", "First", "Third")
		Collections::sort(list, [arg0, arg1|arg0.compareToIgnoreCase(arg1)])
		println(list);
	}

}
