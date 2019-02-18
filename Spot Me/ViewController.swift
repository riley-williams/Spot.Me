//
//  ViewController.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var chartContainer: UIView!
	var testSource = SMChartDataSource()
	var grid:SMGridView!
	var lc:SMLineView!
	
    override func viewDidLoad() {
		super.viewDidLoad()
		grid = SMGridView(frame:chartContainer.frame)
		grid.frame.origin = CGPoint(x: 0, y: 0)
		grid.dataSource = self.testSource
		self.chartContainer.addSubview(grid)
		
		
		lc = SMLineView(frame:chartContainer.frame)
		lc.frame.origin = CGPoint(x: 0, y: 0)
		lc.dataSource = self.testSource
		self.chartContainer.addSubview(lc)
    }


}

