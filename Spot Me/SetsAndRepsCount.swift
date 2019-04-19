//
//  File.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/17/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation

class SetsAndRepsCount{
    //variables hold information for sets and reps for each workout at each level
    
    var squatWeight: Int?
    var squatSets: Int?
    var squatReps: Int?
    var squatSetsInt: Int?
    var squatRepsInt: Int?
    var squatSetsAdv: Int?
    var squatRepsAdv: Int?
    
    var deadliftWeight: Int?
    var deadliftSets: Int?
    var deadliftReps: Int?
    var deadliftSetsInt: Int?
    var deadliftRepsInt: Int?
    var deadliftSetsAdv: Int?
    var deadliftRepsAdv: Int?
    
    init(squatWeight: Int, squatSets: Int, squatReps: Int, squatSetsInt: Int, squatRepsInt: Int, squatSetsAdv: Int, squatRepsAdv: Int,deadliftWeight: Int deadliftSets: Int, deadliftReps: Int, deadliftSetsInt: Int, deadliftRepsInt: Int, deadliftSetsAdv: Int, deadliftRepsAdv: Int){
        //initilizing the variables
        
        
        self.squatWeight = squatWeight
        self.squatSets = squatSets
        self.squatReps = squatReps
        self.squatSetsInt = squatSetsInt
        self.squatRepsInt = squatRepsInt
        self.squatSetsAdv = squatSetsAdv
        self.squatRepsAdv = squatRepsAdv
        
        self.deadliftWeight = deadliftWeight
        self.deadliftSets = deadliftSets
        self.deadliftReps = deadliftReps
        self.deadliftSetsInt = deadliftSetsInt
        self.deadliftRepsInt = deadliftRepsInt
        self.deadliftSetsAdv = deadliftSetsAdv
        self.deadliftRepsAdv = deadliftRepsAdv
        
    }
}
