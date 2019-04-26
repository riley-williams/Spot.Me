//
//  SMLayer.swift
//  Spot Me
//
//  Created by Riley Williams on 3/28/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit


protocol SMLayer {
	var type:SMLayerType { get }
	var color:UIColor { get set }
}
