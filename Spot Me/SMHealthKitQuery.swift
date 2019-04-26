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
	
	private var queryComplete = true
	private var newerQuery:(startDate:Date, endDate:Date)?
	
	init(_ metric: HKQuantityTypeIdentifier, anchor: Date, interval: DateComponents, options: HKStatisticsOptions, delegate: SMHealthKitQueryDelegate) {
		self.metric = metric
		self.anchor = anchor
		self.interval = interval
		self.options = options
		self.delegate = delegate
	}
	
	func executeQuery(fromDate startDate:Date, toDate endDate:Date) {
		//save the newer query for later if one is already in progress
		if queryComplete == false {
			newerQuery = (startDate:startDate, endDate:endDate)
			return
		}
		queryComplete = false

		guard let quantityType = HKObjectType.quantityType(forIdentifier: metric) else {
			fatalError("*** Unable to create a step count type ***")
		}
		
		// Create the query
		let query = HKStatisticsCollectionQuery(quantityType: quantityType,
												quantitySamplePredicate: nil,
												options: options,
												anchorDate: anchor,
												intervalComponents: interval)
		
		// Set the results handler
		query.initialResultsHandler = { query, results, error in
			
			guard let statsCollection = results else {
				// Perform proper error handling here
				return
				//fatalError("*** An error occurred while calculating the statistics: \(String(describing: error?.localizedDescription)) ***")
			}
			self.data = []
			// Plot the weekly step counts over the past 3 months
			statsCollection.enumerateStatistics(from: startDate, to: endDate) { [unowned self] statistics, stop in
				
				if let quantity = statistics.averageQuantity() {
					let date = statistics.startDate
					//let value = Float(quantity.doubleValue(for: self.unit))
					let value = Float(quantity.doubleValue(for: HKUnit.init(from: "count/s")))*60
					self.data.append(SMDataPoint(value: value, date: date))
				}
			}
			
			self.delegate.queryObtainedNewData()
			
			//'unlock' query function and refresh with the newest query executed
			self.queryComplete = true
			if let nq = self.newerQuery {
				self.newerQuery = nil
				self.executeQuery(fromDate: nq.startDate, toDate: nq.endDate)
			}
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
