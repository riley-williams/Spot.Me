//
//  ViewController.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SMChartDataSource, SMHealthKitQueryDelegate {
	
	@IBOutlet weak var chartContainer: UIView!
	@IBOutlet weak var chartView: SMChartView!
	
	var chartLayers:[SMLayer] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		chartView.contentRect = CGRect(x: 0, y: 0, width: 10, height: 120)

		//test line layer
		let lineLayer = SMAreaLayer()
		lineLayer.data = [(5,50), (2,10), (3,15), (4,25), (5,40), (6,60), (7,85), (8,100), (9,110), (10,60), (11,50), (12,30), (13,10)].map {CGPoint(x: $0.0, y: $0.1)}
		
		let altLayer = SMLineLayer()
		altLayer.data = [(1,50), (2,10), (3,15), (4,25), (5,40), (6,60), (7,85), (8,100), (9,110), (10,60), (11,50), (12,30), (13,0)].map {CGPoint(x: $0.0 - 2.0, y: -0.5*$0.1 + 70.0)}
		
		//pack layers
		self.chartLayers = [lineLayer, altLayer]
		
		
		chartView.dataSource = self
	}
	
	
	func layers() -> [SMLayerType] {
		return chartLayers.map { $0.type }
	}
	
	func visibleData(rect: CGRect, layer: Int) -> [Any] {
		//Attempt to only send content that will appear onscreen
		let layer = chartLayers[layer]
		let visibleRect = chartView.safeRect
		switch layer.type {
		case .Line:
			let t = (layer as! SMLineLayer).data.filter { $0.x >= visibleRect.minX && $0.x <= visibleRect.maxX }
			return t
		case .Dot:
			return (layer as! SMDotLayer).data.filter { visibleRect.contains($0) }
		case .Bar:
			return (layer as! SMBarLayer).data.filter { visibleRect.contains(CGRect(origin: $0.origin, size: CGSize(width: 0, height: $0.height))) }
		case .Area:
			let t = (layer as! SMAreaLayer).data.filter { $0.x >= visibleRect.minX && $0.x <= visibleRect.maxX }
			return t
		default:
			assertionFailure("Chart type not implemented")
		}
		return []
	}
	
	
	func queryObtainedNewData() {
		
	}
	
	
	func viewDidChange() {
		
	}
}

