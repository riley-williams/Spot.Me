//
//  LiftObject.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/24/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation

class LiftObject{
    
    var date: Date?
    var workoutLevel: String?
    var workoutType: String?
    var exercise: String?
    var sets: Int?
    var reps: Int?
    var weight: Int?
    var complete = false
    
    init(date: Date, workoutLevel: String, workoutType: String, exercise: String, sets: Int, reps: Int, weight: Int, complete: Bool){
        
        self.date = date
        self.workoutLevel = workoutLevel
        self.workoutType = workoutType
        self.exercise = exercise
        self.sets = sets
        self.reps = reps
        self.weight = weight
        self.complete = complete
    }
}