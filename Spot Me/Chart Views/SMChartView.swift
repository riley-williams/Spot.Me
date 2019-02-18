//
//  SMChartView.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit


class SMChartView: UIView {
    var dataSource:SMChartDataSource?
	
	lazy var width: CGFloat = {
		return self.bounds.width
	}()
	lazy var height: CGFloat = {
		return self.bounds.height
	}()
	var overdraw: Bool = true
	
	//TODO: Compute initial values
	var dataBounds:CGRect = CGRect(x: 0, y: 115, width: 8, height: 30) //test values
	
	
	override init(frame: CGRect) {
		super.init(frame:frame)
		self.backgroundColor = UIColor(white: 0.5, alpha: 0.0)
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	//maps real X value from absolute space to view space
	func toView(x:Float) -> CGFloat {
		let scale = width/dataBounds.width
		return (CGFloat(x) - dataBounds.minX)*scale
	}
	//maps real Y value from absolute space to view space
	func toView(y:Float) -> CGFloat {
		let scale = height/dataBounds.height
		return height - (CGFloat(y) - dataBounds.minY)*scale
	}
	
}
