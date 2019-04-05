//
//  SMHealthKitQuery.swift
//  Spot Me
//
//  Created by Riley Williams on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit
import HealthKit

class SMHealthKitQuery {
	var delegate: SMHealthKitQueryDelegate
	
	var metric: HKQuantityTypeIdentifier
	var anchor: Date
	var interval: DateComponents
	var options: HKStatisticsOptions
	var unit = HKUnit.count()
	
	var data: [SMDataPoint] = []
	
	init(_ metric: HKQuantityTypeIdentifier, anchor: Date, interval: DateComponents, options: HKStatisticsOptions, delegate: SMHealthKitQueryDelegate) {
		self.metric = metric
		self.anchor = anchor
		self.interval = interval
		self.options = options
		self.delegate = delegate
	}
	
	func executeQuery() {
		
		guard let quantityType = HKObjectType.quantityType(forIdentifier: metric) else {
			fatalError("*** Unable to create a step count type ***")
		}
		
		// Create the query
		let query = HKStatisticsCollectionQuery(quantityType: quantityType,
												quantitySamplePredicate: nil,
												options: .cumulativeSum,
												anchorDate: anchor,
												intervalComponents: interval)
		
		// Set the results handler
		query.initialResultsHandler = { query, results, error in
			
			guard let statsCollection = results else {
				// Perform proper error handling here
				fatalError("*** An error occurred while calculating the statistics: \(String(describing: error?.localizedDescription)) ***")
			}
			
			let endDate = Date()
			
			guard let startDate = Calendar.current.date(byAdding: .month, value: -3, to: endDate) else {
				fatalError("*** Unable to calculate the start date ***")
			}
			
			// Plot the weekly step counts over the past 3 months
			statsCollection.enumerateStatistics(from: startDate, to: endDate) { [unowned self] statistics, stop in
				
				if let quantity = statistics.sumQuantity() {
					let date = statistics.startDate
					let value = Float(quantity.doubleValue(for: self.unit))
					self.data.append(SMDataPoint(value: value, date: date))
				}
			}
			
			self.delegate.queryObtainedNewData()
		}
		
		HKHealthStore().execute(query)
	}
	
	
}

protocol SMHealthKitQueryDelegate {
	func queryObtainedNewData()
}

struct SMDataPoint {
	var value:Float
	var date:Date
}
