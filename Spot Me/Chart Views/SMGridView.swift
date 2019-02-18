//
//  SMGridView.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

enum GridType {
	case vertical
	case horizontal
	case both
	case none
}

class SMGridView: SMChartView {
	var gridType:GridType = .both
	var lineCountX:Int? //based on dataset if null
	var lineCountY:Int? //based on dataset if null
	
	// Only override draw() if you perform custom drawing.
	override func draw(_ rect: CGRect) {
		//Compute number of gridlines if it is not provided
		self.backgroundColor = UIColor.clear
		var xCount:Int
		var yCount:Int
		if lineCountY != nil {
			yCount = lineCountY!
		} else {
			yCount = 6
		}
		if lineCountX != nil {
			xCount = lineCountX!
		} else {
			if let data = dataSource?.data {
				xCount = data.x.count-1
			} else {
				xCount = 6
			}
		}
		
		//Draw gridlines
		let path = UIBezierPath()
		
		if gridType == .both || gridType == .vertical {
			var x1:CGFloat
			for x in 0...xCount {
				x1 = CGFloat(x)*width/CGFloat(xCount)
				path.move(to: CGPoint(x: x1, y: 0))
				path.addLine(to: CGPoint(x: x1, y: height))
			}
		}
		if gridType == .both || gridType == .horizontal {
			var y1:CGFloat
			for y in 0...xCount {
				y1 = CGFloat(y)*height/CGFloat(yCount)
				path.move(to: CGPoint(x: 0, y: y1))
				path.addLine(to: CGPoint(x: width, y: y1))
			}
		}

		path.stroke()
	}
}
