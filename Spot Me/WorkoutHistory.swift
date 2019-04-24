//
//  WorkoutHistory.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/24/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation


class WorkoutHistory{
    
    var exerciseInfo: ExerciseArray?
    
    var date: Date?
 
    var workoutHistoryArray = [Date:[ExerciseArray]].self
    
    
    
    init(exerciseInformation: ExerciseArray, Thisdate: Date, workoutArray: [String:[LiftObject]]){
        self.exerciseInfo = exerciseInformation
        date = Date.init()
        
    }
}
