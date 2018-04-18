//
//  Shape.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/18.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import Foundation

/* class， 声明 class 开头， 内有变量，var，常量 let，已经 方法 func */
class Shape {
	var numberOfSides = 0 /* 变量要初始化 */
	var name : String /* 如何没有初始值，则需要用初始化函数，进行赋值 */
	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}
	
	init(name: String) {
		self.name = name
	}
	
	convenience init() {
		self.init(name: "unknow")
	}
	
	deinit { /* 资源释放操作，可以放这样，也可以查看释放被释放掉 */
		print("\(self)'s [\(name)] is deinit")
	}
}
