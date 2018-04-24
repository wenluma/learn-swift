//
//  ToolKit.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/13.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import Foundation

/* typealias 主要用于类型区分，在功能模块上的划分 */
typealias TKError = Error

class ToolKit {
	private static let tkInfo : (version: String, descption: String) = (TKVersion, descrition)
	/* """ 来代表 string 换行处理 */
	private static let descrition = """
		tool kit 是一个工具 class，用来做一些通用性的操作，比如打log，统一的逻辑处理，异常处理等。
		都可以在这里进行
	"""
	
	private static let TKVersion = "0.0" // 常量，不可变 let 声明
	
	public class func TKLog(funcString: String = #function, file: String = #file, line: Int = #line, items: Any...) {
		//		print(#line, #file, #column, #function)
		print("func: \(funcString) file: \(file) line: \(line) msg: \(items)")
	}
	public class func TKLog(funcString: String = #function, file: String = #file, line: Int = #line, _ item: Any) {
		//		print(#line, #file, #column, #function)
		print("func: \(funcString) file: \(file) line: \(line) msg: \(item)")
	}
	
	public class func version () -> String {
		return TKVersion
	}
	
	public class func toolKitInfo() -> (String, String) {
		(tkInfo.0, tkInfo.1) //获取tuple 元素的方式 1
		return (tkInfo.version, tkInfo.descption) // 获取tuple 元素的方式 2
	}
}


