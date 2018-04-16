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
		fatalError("init(coder:) has not been implemented")
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
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

