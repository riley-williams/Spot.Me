//
//  User.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/5/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation

class User{
    
    var age: Int?
    var heightFeet: Int?
    var heightInches: Int?
    var weight: Int?
    var bodyType: Int?
    var bench: Int?
    var deadlift: Int?
    var squat: Int?
    var fortyYardDash: Float?
    var vertical: Float?
    var agility: Float?
    
    init(age: Int, heightFeet: Int, heightInches: Int, weight: Int, bodyType: Int, bench: Int, deadlift: Int, squat: Int, fortyYardDash: Float, vertical: Float, agility: Float){
        
        self.age = age
        self.heightFeet = heightFeet
        self.heightInches = heightInches
        self.weight = weight
        self.bodyType = bodyType
        self.bench = bench
        self.deadlift = deadlift
        self.squat = squat
        self.fortyYardDash = fortyYardDash
        self.vertical = vertical
        self.agility = agility
        
    }
    
    
    
    
}
