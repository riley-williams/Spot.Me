//
//  ViewController.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController, SMChartDataSource, SMHealthKitQueryDelegate {
	
	@IBOutlet weak var chartContainer: UIView!
	@IBOutlet weak var chartView: SMChartView!
	
	var chartLayers:[SMLayer] = []
	var hrQuery:SMHealthKitQuery?
	var hrLayer = SMLineLayer()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let timeWidth: TimeInterval = 60*60*24
		let startDate = Date(timeIntervalSinceNow: -timeWidth).timeIntervalSinceReferenceDate
		
		
		chartView.contentRect = CGRect(x: startDate, y: 0, width: timeWidth, height: 200)

		//test line layer
		//let lineLayer = SMAreaLayer()
		//lineLayer.data = [(5,50), (2,10), (3,15), (4,25), (5,40), (6,60), (7,85), (8,100), (9,110), (10,60), (11,50), (12,30), (13,10)].map {CGPoint(x: $0.0, y: $0.1)}
		
		//let altLayer = SMLineLayer()
		//altLayer.data = [(1,50), (2,10), (3,15), (4,25), (5,40), (6,60), (7,85), (8,100), (9,110), (10,60), (11,50), (12,30), (13,0)].map {CGPoint(x: $0.0 - 2.0, y: -0.5*$0.1 + 70.0)}
		
		
		let allTypes = Set([HKObjectType.workoutType(),
							HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
							HKObjectType.quantityType(forIdentifier: .distanceCycling)!,
							HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning)!,
							HKObjectType.quantityType(forIdentifier: .heartRate)!])
		
		HKHealthStore().requestAuthorization(toShare: allTypes, read: allTypes) { (success, error) in
			if success {
				var dc = DateComponents()
				dc.hour = 1
				self.hrQuery = SMHealthKitQuery(HKQuantityTypeIdentifier.heartRate, anchor: Date(), interval: dc, options: .discreteAverage, delegate: self)
				
				self.hrQuery?.executeQuery(fromDate: Date(timeIntervalSinceReferenceDate: TimeInterval(self.chartView.contentRect.minX)), toDate: Date(timeIntervalSinceReferenceDate: TimeInterval(self.chartView.contentRect.maxX)))
				
			}
		}
		
		
		hrLayer.data = []

		//pack layers
		self.chartLayers = [hrLayer]
		
		
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
		hrLayer.data = hrQuery!.data.map { CGPoint(x: $0.date.timeIntervalSinceReferenceDate, y: Double($0.value)) }
		DispatchQueue.main.async {
			self.chartView.setNeedsDisplay()
		}
	}
	
	
	func viewDidChange() {
		self.hrQuery?.executeQuery(fromDate: Date(timeIntervalSinceReferenceDate: TimeInterval(self.chartView.contentRect.minX)), toDate: Date(timeIntervalSinceReferenceDate: TimeInterval(self.chartView.contentRect.maxX)))
	}
}

