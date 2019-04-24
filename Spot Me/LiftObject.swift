//
//  LiftObject.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/24/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation

class LiftObject{
    
    var workoutLevel: String?
    var exercise: String?
    var sets: Int?
    var reps: Int?
    var weight: Int?
    var complete = false
    
    init(workoutLevel: String, exercise: String, sets: Int, reps: Int, weight: Int, complete: Bool){
        
        self.workoutLevel = workoutLevel
        self.exercise = exercise
        self.sets = sets
        self.reps = reps
        self.weight = weight
        self.complete = complete
    }
}
