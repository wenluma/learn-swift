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
	func simpleDescription() -> String {
		return "A shape with \(numberOfSides) sides."
	}
}
