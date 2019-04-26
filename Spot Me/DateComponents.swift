//
//  DateComponents.swift
//  Spot Me
//
//  Created by Riley Williams on 4/26/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

extension DateComponents {
	func toInterval() -> TimeInterval {
		var a:TimeInterval = 0
		if let k = year {
			a += TimeInterval(31535930*k)
		}
		if let k = month {
			a += TimeInterval(2627994*k)
		}
		if let k = day {
			a += TimeInterval(60*60*24*k)
		}
		if let k = hour {
			a += TimeInterval(60*60*k)
		}
		if let k = minute {
			a += TimeInterval(60*k)
		}
		if let k = second {
			a += TimeInterval(k)
		}
		
		return a
	}
}
