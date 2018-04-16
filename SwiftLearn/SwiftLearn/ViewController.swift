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
		
	}
	/* func 函数标示， () 内参数， -> String 返回值 类型String , to label, 可以用 _ 带他，则使用时不回会出现 to*/
	func helloSwift(to person: String) -> String {
		return person
	}
	func helloSwift(_ person: String) -> String {
		return person
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

