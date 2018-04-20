//
//  Shape.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/18.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import Foundation


/* protocol 协议定义，
可以作用于 class, struct, enum 上 */
protocol ShapeInfoProtocol {
	var name : String {get} // 代表 let
	var numberOfSides : Int { get set }// 代表变量
/* 定义方法 mutating 对class 可以不用写，class 本身支持对变量的修改;
	struct enum 则要写，重写了它本身，值copy  */
	mutating func simpleDescription() -> String;
}

/* enum 扑克牌上的数字
	enum 语法，可以指定 类型，Int or String ;
	可以有方法 description;
	访问方式 .ace 等；
	rawValue 对应枚举值
*/
enum Rank : Int {
	case ace = 1 // 每个case 一行
	case two, three, four, five, six, seven, eight, nine, ten // 多个用 , 分隔
	case jack, queen, king
	
	func description () -> String {
		switch self {
		case .ace:
			return "ace"
		case .jack:
			return "jack"
		case .queen:
			return "queen"
		case .king:
			return "king"
		default:
			return String(self.rawValue)// rawValue 代表数字值
		}
	}
}

/* enum 的实例，类似，关联对象，将变量存储起来使用 */
enum ServerResponse {
	case result(String, String)
	case failure(String)
	case error(Int, String)
}

/* struct 类的使用一样，唯一的不同时，赋值的时候，是值 copy， 类是 reference 引用 */
struct Card {
	var rank : Rank
	func description() -> String {
		return rank.description()
	}
}

/* class， 声明 class 开头， 内有变量，var，常量 let，已经 方法 func */
class Shape : ShapeInfoProtocol {
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
	var sideLength: Double {
		willSet {/* 设置之前做 newValue 未设定的 */
			print("will Set sideLength newValue is \(newValue)")
		}
		didSet {/* 设置之后做 oldValue 已设定 */
			print("did Set sideLength oldValue is \(oldValue)")
		}
	}
	
	init(sideLength: Double, name: String) {// 1. 先自身变量初始化，2 父类初始化 3 父类变量change
		self.sideLength = sideLength /* 要在super.init 之前调用，初始化的顺序决定的; 初始化时，不会调用 willSet, didSet，在初始化之后回调用 */
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
		set (__perimeter){ /* 通过 set 设置 */
			sideLength = __perimeter / 4.0 /* __perimeter 指定变量名，不用 newValue default 值*/
		}
	}
}
