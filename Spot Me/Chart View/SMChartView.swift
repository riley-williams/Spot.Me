//
//  SMChartView.swift
//  Spot Me
//
//  Created by Riley Williams on 2/10/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

enum SMLayerType {
	case Line
	case Dot
	case Bar
	case Area
	case None
}

class SMChartView: UIView , UIGestureRecognizerDelegate {
	var dataSource:SMChartDataSource?
	var width: CGFloat {
		return self.bounds.width
	}
	var height: CGFloat {
		return self.bounds.height
	}
	
	var contentRect:CGRect = CGRect(x: 0, y: 115, width: 8, height: 30) //test values
	var safeRect:CGRect {
		let dx = self.contentRect.width*0.1
		let dy = self.contentRect.height*0.1
		return self.contentRect.insetBy(dx: -dx, dy: -dy)
	}
	
	var lockToXAxis:Bool = true
	
	override func draw(_ rect: CGRect) {
		self.backgroundColor = UIColor(white: 1.0, alpha: 1.0)
		self.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
		if let source = self.dataSource {
			let layerTypes = source.layers()
			
			drawGrid()
			
			for idx in 0..<layerTypes.count {
				let data = source.visibleData(rect: contentRect, layer: idx)
				switch layerTypes[idx] {
				case .Line:
					let d = data as! [CGPoint]
					drawLineChart(data: d)
				case .Dot:
					assertionFailure("Layer type not implemented")
				case .Bar:
					assertionFailure("Layer type not implemented")
				case .Area:
					let d = data as! [CGPoint]
					
					drawAreaChart(data: d)
				default:
					assertionFailure("Layer type not implemented")
				}
			}
			
			drawXLabels()
		}
		
	}
	
	
	
	func drawGrid() {
		//Draw gridlines
		var path = UIBezierPath()
		
		let minorHorizontalLines:[CGFloat] = computeMinorHorizontalLines()
		let majorHorizontalLines:[CGFloat] = computeMajorHorizontalLines()
		
		UIColor.lightGray.setStroke()
		
		if minorHorizontalLines.count > 0 {
			for y in minorHorizontalLines {
				let vY = CtoVy(y)
				path.move(to: CGPoint(x: 0, y: vY))
				path.addLine(to: CGPoint(x: width, y: vY))
			}
		}
		
		path.stroke()
		
		
		path = UIBezierPath()
		UIColor.darkGray.setStroke()
		
		if majorHorizontalLines.count > 0 {
			for y in majorHorizontalLines {
				let vY = CtoVy(y)
				path.move(to: CGPoint(x: 0, y: vY))
				path.addLine(to: CGPoint(x: width, y: vY))
				
				let txtLayer = CATextLayer()
				txtLayer.string = "\(Int(y))"
				txtLayer.frame = CGRect(x: 5, y: vY, width: 100, height: 50)
				txtLayer.fontSize = 12
				txtLayer.contentsScale = UIScreen.main.scale
				txtLayer.foregroundColor = UIColor.black.cgColor
				self.layer.addSublayer(txtLayer)
			}
		}
		
		path.stroke()
	}
	
	
	func computeMajorHorizontalLines() -> [CGFloat] {
		let spacing: CGFloat = pow(5,CGFloat(Int(log(contentRect.height)/log(5))))
		let startY = contentRect.minY-contentRect.minY.truncatingRemainder(dividingBy: spacing)
		
		var lines: [CGFloat] = []
		for y in stride(from: startY, through: contentRect.maxY, by: spacing) {
			lines.append(y)
		}
		
		return lines
	}
	
	func computeMinorHorizontalLines() -> [CGFloat] {
		let spacing: CGFloat = pow(5,CGFloat(Int(log(contentRect.height)/log(5)))-1)
		let startY = contentRect.minY-contentRect.minY.truncatingRemainder(dividingBy: spacing)
		
		var lines: [CGFloat] = []
		for y in stride(from: startY, through: contentRect.maxY, by: spacing) {
			lines.append(y)
		}
		
		return lines
	}
	
	func autoMajorInterval() -> TimeInterval {
		let interval: CGFloat = pow(12,CGFloat(Int(log(contentRect.width)/log(12)))-1)
		return TimeInterval(interval)
	}
	
	func autoInterval() -> DateComponents {
		let components = [
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: nil, second: 1),
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: nil, second: 15),
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: nil, second: 30),
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: 1, second: nil),
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: 10, second: nil),
			DateComponents(year: nil, month: nil, day: nil, hour: nil, minute: 30, second: nil),
			DateComponents(year: nil, month: nil, day: nil, hour: 1, minute: nil, second: nil),
			DateComponents(year: nil, month: nil, day: nil, hour: 6, minute: nil, second: nil),
			DateComponents(year: nil, month: nil, day: nil, hour: 12, minute: nil, second: nil),
			DateComponents(year: nil, month: nil, day: 1, hour: nil, minute: nil, second: nil),
			DateComponents(year: nil, month: nil, day: 7, hour: nil, minute: nil, second: nil),
			DateComponents(year: nil, month: 1, day: nil, hour: nil, minute: nil, second: nil),
			DateComponents(year: 1, month: nil, day: nil, hour: nil, minute: nil, second: nil),
			DateComponents(year: 5, month: nil, day: nil, hour: nil, minute: nil, second: nil)
		]
		
		var i = 0
		while Double(components[i].toInterval()) < Double(contentRect.width/100) && i < components.count-1 {
			i += 1
		}
		
		return components[i]
	}
	
	
	func drawXLabels() {
		let months = "JFMAMJJASOND"
		/*
		let x:[CGFloat] = [] //DELETE ME
		for x in majorVerticalLines {
			let vX = CtoVx(x)
			path.move(to: CGPoint(x: vX, y: 50))
			path.addLine(to: CGPoint(x: vX, y: height))
			
			let txtLayer = CATextLayer()
			txtLayer.string = "\(x)"
			txtLayer.frame = CGRect(x: vX, y: 50, width: 100, height: 50)
			txtLayer.fontSize = 12
			txtLayer.contentsScale = UIScreen.main.scale
			txtLayer.foregroundColor = UIColor.black.cgColor
			self.layer.addSublayer(txtLayer)
		}
		*/
	}
	
	func drawLineChart(data: [CGPoint]) {
		if data.count > 1 {
			let path = UIBezierPath()
			
			let x0 = CtoVx(data[0].x)
			let y0 = CtoVy(data[0].y)
			path.move(to: CGPoint(x: x0, y: y0))
			
			for i in 1..<data.count {
				let x = CtoVx(data[i].x)
				let y = CtoVy(data[i].y)
				path.addLine(to: CGPoint(x: x, y: y))
			}
			path.lineWidth = 2
			path.lineJoinStyle = .round
			path.stroke()
		}
	}
	
	
	func drawAreaChart(data: [CGPoint]) {
		if data.count > 1 {
			let path = UIBezierPath()
			let x0 = CtoVx(data[0].x)
			let y0 = CtoVy(0)
			path.move(to: CGPoint(x: x0, y: y0))
			
			for i in 0..<data.count {
				let x = CtoVx(data[i].x)
				let y = CtoVy(data[i].y)
				path.addLine(to: CGPoint(x: x, y: y))
			}
			
			let x1 = CtoVx(data.last!.x)
			let y1 = CtoVy(0)
			path.addLine(to: CGPoint(x: x1, y: y1))
			
			
			path.lineWidth = 2
			path.lineJoinStyle = .round
			path.fill(with: .normal, alpha: 0.5)
		}
	}
	
	
	//convert a point from the content space to view space
	func CtoV(_ p:CGPoint) -> CGPoint {
		return CGPoint(x:CtoVx(p.x), y:CtoVy(p.y))
	}
	
	//convert a value from the content x space to view x space
	func CtoVx(_ x:CGFloat) -> CGFloat {
		return width*(x - contentRect.minX)/contentRect.width
	}
	
	//convert a value from the content y space to view y space
	func CtoVy(_ y:CGFloat) -> CGFloat {
		return height*(contentRect.maxY - y)/contentRect.height
	}
	
	//convert a point from the view space to content space
	func VtoC(_ p:CGPoint) -> CGPoint {
		return CGPoint(x:VtoCx(p.x)/10, y:VtoCy(p.y)/10)
	}
	
	//convert a value from the view x space to content x space
	func VtoCx(_ x:CGFloat) -> CGFloat {
		return contentRect.width*x/width + contentRect.minX
	}
	
	//convert a value from the view y space to content y space
	func VtoCy(_ y:CGFloat) -> CGFloat {
		return contentRect.height*(height - y)/height + contentRect.minY
	}
	
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		setupGestureRecognizers()
	}
	
	override init(frame: CGRect) {
		super.init(frame:frame)
		setupGestureRecognizers()
	}
	
	func setupGestureRecognizers() {
		let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
		let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
		pan.delegate = self
		pinch.delegate = self
		self.addGestureRecognizer(pan)
		self.addGestureRecognizer(pinch)
		self.isUserInteractionEnabled = true
	}
	
	
	@objc func handlePan(_ sender:UIPanGestureRecognizer) {
		let translation = sender.translation(in: self)
		
		let contentTranslation = CGPoint(x: -translation.x/width*contentRect.width, y: translation.y/height*contentRect.height)
		contentRect.origin = contentRect.origin + contentTranslation
		

		if lockToXAxis {
			contentRect.origin = CGPoint(x: contentRect.origin.x, y:0)
		}
		
		//cleanup
		sender.setTranslation(CGPoint.zero, in: self)
		self.setNeedsDisplay()
		self.dataSource?.viewDidChange()
	}
	
	@objc func handlePinch(_ sender:UIPinchGestureRecognizer) {
		let scale = sender.scale
		let dx = (scale-1)*contentRect.width
		let dy = (scale-1)*contentRect.height
		contentRect = contentRect.insetBy(dx: dx, dy: dy)
		
		if lockToXAxis {
			contentRect.origin = CGPoint(x: contentRect.origin.x, y:0)
		}
		
		//cleanup
		sender.scale = 1
		self.setNeedsDisplay()
		self.dataSource?.viewDidChange()
	}
	
	func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
		return true
	}
	
}


protocol SMChartDataSource {
	func layers() -> [SMLayerType]
	func visibleData(rect:CGRect, layer:Int) -> [Any]
	func viewDidChange()
}



//Helper methods

func +(a:CGPoint, b:CGPoint) -> CGPoint {
	return CGPoint(x: a.x+b.x, y: a.y+b.y)
}
