//
//  ToolKit.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/13.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import Foundation

class ToolKit {
	
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
	
	public class func version () -> String {
		return TKVersion
	}
}


