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

class Square: Shape {/* 继承 class newClassName: SuperClassName {}*/
	var sideLength: Double
	
	init(sideLength: Double, name: String) {// 1. 先自身变量初始化，2 父类初始化 3 父类变量change
		self.sideLength = sideLength /* 要在super.init 之前调用，初始化的顺序决定的 */
		super.init(name: name)/* 对super 进行初始化操作 */
		numberOfSides = 4 /* super 变量改变，要走 super.init 之后 */
	}
	
	func area() -> Double {
		return sideLength * sideLength
	}
	
	/* 重写 super 的 方法，前面要用 override */
	override func simpleDescription() -> String {
		return "A square with sides of length \(sideLength)."
	}
	
	var perimeter: Double { /* compute property */
		get { /* 通过 get 获取结果 */
			return 4.0 * sideLength
		}
		set { /* 通过 set 设置 */
			sideLength = newValue / 4.0 /* newValue default 值*/
		}
	}
}
