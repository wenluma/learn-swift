//
//  ViewController.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/13.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var items : [UIButton]? /* 数组 [] 表示 */
	var images : [String : String]? /* 字典 [] 表示 前key，后 value */

	override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
		items = [UIButton]()
		images = [String : String]()
		super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let jack : String? = nil;
		if (jack != nil) {
			ToolKit.TKLog(items: "jack is a person")
		} else {
			ToolKit.TKLog(items: "jack is nil")
		}
		
		ToolKit.TKLog("hi \(jack ?? "A")") /* A ?? any  ,如果 A = nil， 取any*/
		
		let names = ["jack", "joss", "stevence"]
		for name in names {
			ToolKit.TKLog(name)
		}
		
		/* switch value can be string, value 可以是一个 where 语句 */
		let country = "China"
		switch country {
		case "Chinese":
			ToolKit.TKLog("\(country) is Chinese")
		case let x where x.hasSuffix("pepper"):
			ToolKit.TKLog("\(country) is not pepper")
		default:
			ToolKit.TKLog("\(country) is my country")
		}
		
		/* 对 language 字典的遍历处理 */
		let languages = ["java" : 1990, "C" : 1980, "C++" : 1991]
		for (lang, age) in languages {
			if ( age > 1990 ) {
				ToolKit.TKLog(lang)
			}
			else {
				ToolKit.TKLog(lang)
			}
		}
		
		/* while :
			while (condition) {
			}
		
			没有 do
			repeat {
			} while (condition)
		*/
		
		/*
		[) = ..< 半开半闭
		[] = ... 全闭
		*/
		for num in 1..<5 { //1,2,3,4
			ToolKit.TKLog(num)
		}
		
		ToolKit.TKLog(helloSwift(to: "swfit"))
		ToolKit.TKLog(helloSwift("jack"))
		
		/* (item1, item2, ...)tuple 元组，是一个灵活的小结构，便于使用 ,设计的有点类似数组*/
		let cat = ("red", 1, "beijing")
		ToolKit.TKLog(cat.0)
		
		/* closure 闭包，{} 之间； ()内是参数， -> String 返回类型， in 之后， 是实现 */
		let retName = { (name: String) -> String in
			return name
		}
		ToolKit.TKLog(retName("hello closure"))
		useShape()
		useEnum()
		useStruct()
		useProtocols()
	}
	/* func 函数标示， () 内参数， -> String 返回值 类型String , to label, 可以用 _ 带他，则使用时不回会出现 to*/
	func helloSwift(to person: String) -> String {
		return person
	}
	func helloSwift(_ person: String) -> String {
		/* nest func; 输入 string， 输出 Int, func(String -> Int)； func可以做为一个参数，也可以做为一个返回类型  */
		func toSwift() -> String {
			return person + " is leaning swift"
		}
		return toSwift()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
// MARK: class use
	func useShape() {
		let shape = Shape() // 类初始化
		shape.numberOfSides = 2
		shape.simpleDescription()
		
		/* optional value ? 如何前者为 nil， 整个语句为 nil，如果为正常对象，则需要 unwrap 使用，如 square?; 整个句子时 optional 语句 */
		let square :Square? = Square(sideLength: 4, name: "Square")
		square?.sideLength = 8 /* 初始化完成之后，才会调用 willSet, didSet */
	}
	
//	MAR: enum
	func useEnum() {
		let ace = Rank.ace //声明enum
		let x = Rank(rawValue: 11) // 通过rawValue 获取 Rank， optional value
		print(x?.description() ?? "unknow value")
		switch ace {
		case .ace:
			print(ace.description())
		default:
			print("default")
		}
		
//		enum 实例，当作一个store property 的属性，来存储数据
		let success = ServerResponse.result("6:00 am", "8:09 pm")
		let failure = ServerResponse.failure("Out of cheese.")
		let error = ServerResponse.error(404, "not find server")
		switch success {
		case let .result(sunrise, sunset):
			print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
		case let .failure(message):
			print("Failure...  \(message)")
		case let .error(errorCode, errorDescription):
			print("Error...code: \(errorCode)  \(errorDescription)")
		}
	}
	
//MARK: struct
	func useStruct() {
		let card = Card(rank: .ace, numberOfSides: 4)
	}
	
//	use protocols 使用多态，可以方便使用，不需要关注具体的对象，直接调用协议方法
	func useProtocols() {
		var shapeInfos : [ShapeInfoProtocol] = []
		shapeInfos.append(Card(rank: .jack, numberOfSides: 4))
		shapeInfos.append(Shape())
		
		for info in shapeInfos {
			print(info.name)
		}
	}
}

