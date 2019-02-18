//
//  SMLineView.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class SMLineView: SMChartView {    
	
	
	// Only override draw() if you perform custom drawing.
	override func draw(_ rect: CGRect) {
		if let data = dataSource?.data {
			let path = UIBezierPath()
			
			let x0 = toView(x:data.x[0])
			let y0 = toView(y:data.y[0])
			path.move(to: CGPoint(x: x0, y: y0))
			
			for i in 1..<data.x.count {
				let x1 = toView(x:data.x[i])
				let y1 = toView(y:data.y[i])
				path.addLine(to: CGPoint(x: x1, y: y1))
			}
			
			path.stroke()
		}
	}
	
	
}
