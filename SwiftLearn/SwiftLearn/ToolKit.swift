//
//  ToolKit.swift
//  SwiftLearn
//
//  Created by gaoliang5 on 2018/4/13.
//  Copyright © 2018年 gaoliang5. All rights reserved.
//

import Foundation

class ToolKit {
	
	private static let TKVersion = "0.0" // 常量，不可变 let 声明
	
	public class func TKLog(funcString: String = #function, file: String = #file, line: Int = #line, items: Any...) {
		//		print(#line, #file, #column, #function)
		print("func: \(funcString) file: \(file) line: \(line) msg: \(items)")
	}
	
	public class func version () -> String {
		return TKVersion
	}
}


