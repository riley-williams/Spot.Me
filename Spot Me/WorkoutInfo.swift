//
//  File.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/17/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import Foundation

class WorkoutInfo{
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
    
    var legPressWeight: Int?
    var legPressSets: Int?
    var legPressReps: Int?
    var legPressSetsInt: Int?
    var legPressRepsInt: Int?
    var legPressSetsAdv: Int?
    var legPressRepsAdv: Int?
    
    var lungesWeight: Int?
    var lungesSets: Int?
    var lungesReps: Int?
    var lungesSetsInt: Int?
    var lungesRepsInt: Int?
    var lungesSetsAdv: Int?
    var lungesRepsAdv: Int?
    
    var hangCleanWeight: Int?
    var hangCleanSets: Int?
    var hangCleanReps: Int?
    var hangCleanSetsInt: Int?
    var hangCleanRepsInt: Int?
    var hangCleanSetsAdv: Int?
    var hangCleanRepsAdv: Int?
    
    var stepUpsWeight: Int?
    var stepUpsSets: Int?
    var stepUpsReps: Int?
    var stepUpsSetsInt: Int?
    var stepUpsRepsInt: Int?
    var stepUpsSetsAdv: Int?
    var stepUpsRepsAdv: Int?
    
    var hamstringCurlsWeight: Int?
    var hamstringCurlsSets: Int?
    var hamstringCurlsReps: Int?
    var hamstringCurlsSetsInt: Int?
    var hamstringCurlsRepsInt: Int?
    var hamstringCurlsSetsAdv: Int?
    var hamstringCurlsRepsAdv: Int?
    
    var deepSideLungesWeight: Int?
    var deepSideLungesSets: Int?
    var deepSideLungesReps: Int?
    var deepSideLungesSetsInt: Int?
    var deepSideLungesRepsInt: Int?
    var deepSideLungesSetsAdv: Int?
    var deepSideLungesRepsAdv: Int?
    
    var calfRaisesWeight: Int?
    var calfRaisesSets: Int?
    var calfRaisesReps: Int?
    var calfRaisesSetsInt: Int?
    var calfRaisesRepsInt: Int?
    var calfRaisesSetsAdv: Int?
    var calfRaisesRepsAdv: Int?
    
    var reverseLungesWeight: Int?
    var reverseLungesSets: Int?
    var reverseLungesReps: Int?
    var reverseLungesSetsInt: Int?
    var reverseLungesRepsInt: Int?
    var reverseLungesSetsAdv: Int?
    var reverseLungesRepsAdv: Int?
    
    var oneLegSquatWeight: Int?
    var oneLegSquatSets: Int?
    var oneLegSquatReps: Int?
    var oneLegSquatSetsInt: Int?
    var oneLegSquatRepsInt: Int?
    var oneLegSquatSetsAdv: Int?
    var oneLegSquatRepsAdv: Int?
    
    var splitSquatWeight: Int?
    var splitSquatSets: Int?
    var splitSquatReps: Int?
    var splitSquatSetsInt: Int?
    var splitSquatRepsInt: Int?
    var splitSquatSetsAdv: Int?
    var splitSquatRepsAdv: Int?
    
    var stationaryBikeTime: Int?
    var stationaryBikeTimeInt: Int?
    var stationaryBikeTimeAdv: Int?
    var stationaryBikeDistance: Float?
    
    var verticalLeapBest: Float?
    var verticalLeapAverage: Float?
    var verticalLeapOne: Float?
    var verticalLeapTwo: Float?
    var verticalLeapThree: Float?
    var verticalLeapFour: Float?
    var verticalLeapFive: Float?
    
    var walkingLungesSets: Int?
    var walkingLungesSetsInt: Int?
    var walkingLungesSetsAdv: Int?
    var walkingLungesDistance: Int?
    var walkingLungesDistanceInt: Int?
    var walkingLungesDistanceAdv: Int?
    
    var boxJumpsHeight: Int?
    var boxJumpsSets: Int?
    var boxJumpsReps: Int?
    var boxJumpsSetsInt: Int?
    var boxJumpsRepsInt: Int?
    var boxJumpsSetsAdv: Int?
    var boxJumpsRepsAdv: Int?
    
    var benchPressWeight: Int?
    var benchPressSets: Int?
    var benchPressReps: Int?
    var benchPressSetsInt: Int?
    var benchPressRepsInt: Int?
    var benchPressSetsAdv: Int?
    var benchPressRepsAdv: Int?
    
    var overheadPressWeight: Int?
    var overheadPressSets: Int?
    var overheadPressReps: Int?
    var overheadPressSetsInt: Int?
    var overheadPressRepsInt: Int?
    var overheadPressSetsAdv: Int?
    var overheadPressRepsAdv: Int?
    
    var arnoldPressWeight: Int?
    var arnoldPressSets: Int?
    var arnoldPressReps: Int?
    var arnoldPressSetsInt: Int?
    var arnoldPressRepsInt: Int?
    var arnoldPressSetsAdv: Int?
    var arnoldPressRepsAdv: Int?
    
    var dumbbellPressWeight: Int?
    var dumbbellPressSets: Int?
    var dumbbellPressReps: Int?
    var dumbbellPressSetsInt: Int?
    var dumbbellPressRepsInt: Int?
    var dumbbellPressSetsAdv: Int?
    var dumbbellPressRepsAdv: Int?
    
    var tricepExtensionsWeight: Int?
    var tricepExtensionsSets: Int?
    var tricepExtensionsReps: Int?
    var tricepExtensionsSetsInt: Int?
    var tricepExtensionsRepsInt: Int?
    var tricepExtensionsSetsAdv: Int?
    var tricepExtensionsRepsAdv: Int?
    
    var bicepCurlsWeight: Int?
    var bicepCurlsSets: Int?
    var bicepCurlsReps: Int?
    var bicepCurlsSetsInt: Int?
    var bicepCurlsRepsInt: Int?
    var bicepCurlsSetsAdv: Int?
    var bicepCurlsRepsAdv: Int?
    
    var planksTime: Int?
    var planksTimeInt: Int?
    var planksTimeAdv: Int?
    var planksSets: Int?
    var planksSetsInt: Int?
    var planksSetsAdv: Int?
    
    var inclineBenchPressWeight: Int?
    var inclineBenchPressSets: Int?
    var inclineBenchPressReps: Int?
    var inclineBenchPressSetsInt: Int?
    var inclineBenchPressRepsInt: Int?
    var inclineBenchPressSetsAdv: Int?
    var inclineBenchPressRepsAdv: Int?
    
    var preacherCurlsWeight: Int?
    var preacherCurlsSets: Int?
    var preacherCurlsReps: Int?
    var preacherCurlsSetsInt: Int?
    var preacherCurlsRepsInt: Int?
    var preacherCurlsSetsAdv: Int?
    var preacherCurlsRepsAdv: Int?
    
    var militaryPressWeight: Int?
    var militaryPressSets: Int?
    var militaryPressReps: Int?
    var militaryPressSetsInt: Int?
    var militaryPressRepsInt: Int?
    var militaryPressSetsAdv: Int?
    var militaryPressRepsAdv: Int?
    
    var sideLateralRaiseWeight: Int?
    var sideLateralRaiseSets: Int?
    var sideLateralRaiseReps: Int?
    var sideLateralRaiseSetsInt: Int?
    var sideLateralRaiseRepsInt: Int?
    var sideLateralRaiseSetsAdv: Int?
    var sideLateralRaiseRepsAdv: Int?
    
    var kickbacksWeight: Int?
    var kickbacksSets: Int?
    var kickbacksReps: Int?
    var kickbacksSetsInt: Int?
    var kickbacksRepsInt: Int?
    var kickbacksSetsAdv: Int?
    var kickbacksRepsAdv: Int?
    
    var dipsSets: Int?
    var dipsReps: Int?
   
    var forearmTwistsWeight: Int?
    var forearmTwistsSets: Int?
    var forearmTwistsReps: Int?
    var forearmTwistsSetsInt: Int?
    var forearmTwistsRepsInt: Int?
    var forearmTwistsSetsAdv: Int?
    var forearmTwistsRepsAdv: Int?
    
    var lateralSideRaisesWeight: Int?
    var lateralSideRaisesSets: Int?
    var lateralSideRaisesReps: Int?
    var lateralSideRaisesSetsInt: Int?
    var lateralSideRaisesRepsInt: Int?
    var lateralSideRaisesSetsAdv: Int?
    var lateralSideRaisesRepsAdv: Int?
    
    
    var sixInchesSets: Int?
    var sixInchesTime: Int?
    var sixInchesSetsInt: Int?
    var sixInchesTimeInt: Int?
    var sixInchesSetsAdv: Int?
    var sixInchesTimeAdv: Int?
    
    var uprightRowsWeight: Int?
    var uprightRowsSets: Int?
    var uprightRowsReps: Int?
    var uprightRowsSetsInt: Int?
    var uprightRowsRepsInt: Int?
    var uprightRowsSetsAdv: Int?
    var uprightRowsRepsAdv: Int?
    
    var pullupsSets: Int?
    var pullupsReps: Int?
    var pullupsSetsInt: Int?
    var pullupsRepsInt: Int?
    var pullupsSetsAdv: Int?
    var pullupsRepsAdv: Int?
    
    var weightedDipsWeight: Int?
    var weightedDipsSets: Int?
    var weightedDipsReps: Int?
    var weightedDipsSetsInt: Int?
    var weightedDipsRepsInt: Int?
    var weightedDipsSetsAdv: Int?
    var weightedDipsRepsAdv: Int?
    
    var fortyYardDashTime: Float?
    
    var runTime: Int?
    var runDistance: Float?
    
    var legRaiseSets: Int?
    var legRaiseReps: Int?
    var legRaiseSetsInt: Int?
    var legRaiseRepsInt: Int?
    var legRaiseSetsAdv: Int?
    var legRaiseRepsAdv: Int?
    
    var sidePlanksTime: Int?
    var sidePlanksTimeInt: Int?
    var sidePlanksTimeAdv: Int?
    var sidePlanksSets: Int?
    var sidePlanksSetsInt: Int?
    var sidePlanksSetsAdv: Int?
    
    var latPullWeight: Int?
    var latPullSets: Int?
    var latPullReps: Int?
    var latPullSetsInt: Int?
    var latPullRepsInt: Int?
    var latPullSetsAdv: Int?
    var latPullRepsAdv: Int?
    
    var shrugWeight: Int?
    var shrugSets: Int?
    var shrugReps: Int?
    var shrugSetsInt: Int?
    var shrugRepsInt: Int?
    var shrugSetsAdv: Int?
    var shrugRepsAdv: Int?
    
    var dumbbellCalfRaisesWeight: Int?
    var dumbbellCalfRaisesSets: Int?
    var dumbbellCalfRaisesReps: Int?
    var dumbbellCalfRaisesSetsInt: Int?
    var dumbbellCalfRaisesRepsInt: Int?
    var dumbbellCalfRaisesSetsAdv: Int?
    var dumbbellCalfRaisesRepsAdv: Int?
    
    var staggerSprintsTime: Int?
    
    init(squatWeight: Int, squatSets: Int, squatReps: Int, squatSetsInt: Int, squatRepsInt: Int, squatSetsAdv: Int, squatRepsAdv: Int, deadliftWeight: Int, deadliftSets: Int, deadliftReps: Int, deadliftSetsInt: Int, deadliftRepsInt: Int, deadliftSetsAdv: Int, deadliftRepsAdv: Int, legPressWeight: Int, legPressSets: Int, legPressReps: Int, legPressSetsInt: Int, legPressRepsInt: Int, legPressSetsAdv: Int, legPressRepsAdv: Int, lungesWeight: Int, lungesSets: Int, lungesReps: Int, lungesSetsInt: Int, lungesRepsInt: Int, lungesSetsAdv: Int, lungesRepsAdv: Int, hangCleanWeight: Int, hangCleanSets: Int, hangCleanReps: Int, hangCleanSetsInt: Int, hangCleanRepsInt: Int, hangCleanSetsAdv: Int, hangCleanRepsAdv:  Int, stepUpsWeight: Int, stepUpsSets: Int, stepUpsReps: Int, stepUpsSetsInt: Int, stepUpsRepsInt: Int, stepUpsSetsAdv: Int, stepUpsRepsAdv: Int, hamstringCurlsWeight: Int, hamstringCurlsSets: Int, hamstringCurlsReps: Int, hamstringCurlsSetsInt: Int, hamstringCurlsRepsInt: Int, hamstringCurlsSetsAdv: Int, hamstringCurlsRepsAdv: Int, deepSideLungesWeight: Int, deepSideLungesSets: Int, deepSideLungesReps: Int, deepSideLungesSetsInt: Int, deepSideLungesRepsInt: Int, deepSideLungesSetsAdv: Int, deepSideLungesRepsAdv: Int, calfRaisesWeight: Int, calfRaisesSets: Int, calfRaisesReps: Int, calfRaisesSetsInt: Int, calfRaisesRepsInt: Int, calfRaisesSetsAdv: Int, calfRaisesRepsAdv: Int, reverseLungesWeight: Int, reverseLungesSets: Int, reverseLungesReps: Int, reverseLungesSetsInt: Int, reverseLungesRepsInt: Int, reverseLungesSetsAdv: Int, reverseLungesRepsAdv: Int, oneLegSquatWeight: Int, oneLegSquatSets: Int, oneLegSquatReps: Int, oneLegSquatSetsInt: Int, oneLegSquatRepsInt: Int, oneLegSquatSetsAdv: Int, oneLegSquatRepsAdv: Int, splitSquatWeight: Int, splitSquatSets: Int, splitSquatReps: Int, splitSquatSetsInt: Int, splitSquatRepsInt: Int, splitSquatSetsAdv: Int, splitSquatRepsAdv: Int, stationaryBikeTime: Int, stationaryBikeTimeInt: Int, stationaryBikeTimeAdv: Int, stationaryBikeDistance: Float, verticalLeapBest: Float, verticalLeapAverage: Float, verticalLeapOne: Float, verticalLeapTwo: Float, verticalLeapThree: Float, verticalLeapFour: Float, verticalLeapFive: Float, walkingLungesSets: Int, walkingLungesSetsInt: Int, walkingLungesSetsAdv: Int, walkingLungesDistance: Int, walkingLungesDistanceInt: Int, walkingLungesDistanceAdv: Int, boxJumpsHeight: Int, boxJumpsSets: Int, boxJumpsReps: Int, boxJumpsSetsInt: Int, boxJumpsRepsInt: Int, boxJumpsSetsAdv: Int, boxJumpsRepsAdv: Int, benchPressWeight: Int, benchPressSets: Int, benchPressReps: Int, benchPressSetsInt: Int, benchPressRepsInt: Int, benchPressSetsAdv: Int, benchPressRepsAdv: Int, overheadPressWeight: Int, overheadPressSets: Int, overheadPressReps: Int, overheadPressSetsInt: Int, overheadPressRepsInt: Int,  overheadPressSetsAdv: Int, overheadPressRepsAdv: Int, arnoldPressWeight: Int, arnoldPressSets: Int, arnoldPressReps: Int, arnoldPressSetsInt: Int, arnoldPressRepsInt: Int, arnoldPressSetsAdv: Int, arnoldPressRepsAdv: Int, dumbbellPressWeight: Int, dumbbellPressSets: Int, dumbbellPressReps: Int, dumbbellPressSetsInt: Int, dumbbellPressRepsInt: Int, dumbbellPressSetsAdv: Int, dumbbellPressRepsAdv: Int, tricepExtensionsWeight: Int, tricepExtensionsSets: Int, tricepExtensionsReps: Int, tricepExtensionsSetsInt: Int, tricepExtensionsRepsInt: Int, tricepExtensionsSetsAdv: Int, tricepExtensionsRepsAdv: Int, bicepCurlsWeight: Int, bicepCurlsSets: Int, bicepCurlsReps: Int, bicepCurlsSetsInt: Int, bicepCurlsRepsInt: Int, bicepCurlsSetsAdv: Int, bicepCurlsRepsAdv: Int, planksTime: Int, planksTimeInt: Int, planksTimeAdv: Int, planksSets: Int, planksSetsInt: Int, planksSetsAdv: Int, inclineBenchPressWeight: Int, inclineBenchPressSets: Int, inclineBenchPressReps: Int, inclineBenchPressSetsInt: Int, inclineBenchPressRepsInt: Int, inclineBenchPressSetsAdv: Int, inclineBenchPressRepsAdv: Int, preacherCurlsWeight: Int, preacherCurlsSetsInt: Int, preacherCurlsReps: Int, preacherCurlsSets: Int, preacherCurlsRepsInt: Int, preacherCurlsSetsAdv: Int, preacherCurlsRepsAdv: Int, militaryPressWeight: Int, militaryPressSets: Int, militaryPressReps: Int, militaryPressSetsInt: Int, militaryPressRepsInt: Int, militaryPressSetsAdv: Int, militaryPressRepsAdv: Int, sideLateralRaiseWeight: Int, sideLateralRaiseSets: Int, sideLateralRaiseReps: Int, sideLateralRaiseSetsInt: Int, sideLateralRaiseRepsInt: Int, sideLateralRaiseSetsAdv: Int, sideLateralRaiseRepsAdv: Int, kickbacksWeight: Int, kickbacksSets: Int, kickbacksReps: Int, kickbacksSetsInt: Int, kickbacksRepsInt: Int, kickbacksSetsAdv: Int, kickbacksRepsAdv: Int, dipsReps: Int, dipsSets: Int, forearmTwistsWeight: Int, forearmTwistsSets: Int, forearemTwistsReps: Int, forearmTwistsSetsInt: Int, forearemTwistsRepsInt: Int, forearmTwistsSetsAdv: Int, forearemTwistsRepsAdv: Int, sixInchesSets: Int, sixInchesTime: Int, sixInchesSetsInt: Int, sixInchesTimeInt: Int, sixInchesSetsAdv: Int, sixInchesTimeAdv: Int, uprightRowsWeight: Int, uprightRowsSets: Int, uprightRowsReps: Int, uprightRowsSetsInt: Int, uprightRowsRepsint: Int, uprightRowsSetsAdv: Int, uprightRowsRepsAdv: Int, pullupsSets: Int, pullupsReps: Int, pullupsSetsInt: Int, pullupsRepsInt: Int, pullupsSetsAdv: Int, pullupsRepsAdv: Int, staggerSprintsTime: Int, weightedDipsWeight: Int, weightedDipsSets: Int, weightedDipsReps: Int, weightedDipsSetsInt: Int, weightedDipsRepsInt: Int, weightedDipsSetsAdv: Int, weightedDipsRepsAdv: Int, fortyYardDashTime: Float, runTime: Int, runDistance: Float, legRaiseSets: Int, legRaiseReps: Int, legRaiseSetsInt: Int, legRaiseRepsInt: Int, legRaiseSetsAdv: Int, legRaiseRepsAdv: Int, sidePlanksTime: Int, sidePlanksTimeInt: Int, sidePlanksTimeAdv: Int, sidePlanksSets: Int, sidePlanksSetsInt: Int, sidePlanksSetsAdv: Int, latPullWeight: Int, latPullSets: Int, latPullReps: Int, latPullSetsInt: Int, latPullRepsInt: Int, latPullSetsAdv: Int, latPullRepsAdv: Int, shrugWeight: Int, shrugSets: Int, shrugReps: Int, shrugSetsInt: Int, shrugRepsInt: Int, shrugSetsAdv: Int, shrugRepsAdv: Int, dumbbellCalfRaisesWeight: Int, dumbbellCalfRaisesSets: Int, dumbbellCalfRaisesReps: Int, dumbbellCalfRaisesSetsInt: Int, dumbbellCalfRaisesRepsInt: Int, dumbbellCalfRaisesSetsAdv: Int, dumbbellCalfRaisesRepsAdv: Int){
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
        
        self.legPressWeight = legPressWeight
        self.legPressSets = legPressSets
        self.legPressReps = legPressReps
        self.legPressSetsInt = legPressSetsInt
        self.legPressRepsInt = legPressRepsInt
        self.legPressSetsAdv = legPressSetsAdv
        self.legPressRepsAdv = legPressRepsAdv
        
        self.lungesWeight = lungesWeight
        self.lungesSets = lungesSets
        self.lungesReps = lungesReps
        self.lungesSetsInt = lungesSetsInt
        self.lungesRepsInt = lungesRepsInt
        self.lungesSetsAdv = lungesSetsAdv
        self.lungesRepsAdv = lungesRepsAdv
        
        self.hangCleanWeight = hangCleanWeight
        self.hangCleanSets = hangCleanSets
        self.hangCleanReps = hangCleanReps
        self.hangCleanSetsInt = hangCleanSetsInt
        self.hangCleanRepsInt = hangCleanRepsInt
        self.hangCleanSetsAdv = hangCleanSetsAdv
        self.hangCleanRepsAdv = hangCleanRepsAdv
        
        self.stepUpsWeight = stepUpsWeight
        self.stepUpsSets = stepUpsSets
        self.stepUpsReps = stepUpsReps
        self.stepUpsSetsInt = stepUpsSetsInt
        self.stepUpsRepsInt = stepUpsRepsInt
        self.stepUpsSetsAdv = stepUpsSetsAdv
        self.stepUpsRepsAdv = stepUpsRepsAdv
        
        self.hamstringCurlsWeight = hamstringCurlsWeight
        self.hamstringCurlsSets = hamstringCurlsSets
        self.hamstringCurlsReps = hamstringCurlsReps
        self.hamstringCurlsSetsInt = hamstringCurlsSetsInt
        self.hamstringCurlsRepsInt = hamstringCurlsRepsInt
        self.hamstringCurlsSetsAdv = hamstringCurlsSetsAdv
        self.hamstringCurlsRepsAdv = hamstringCurlsRepsAdv
        
        self.deepSideLungesWeight = deepSideLungesWeight
        self.deepSideLungesSets = deepSideLungesSets
        self.deepSideLungesReps = deepSideLungesReps
        self.deepSideLungesSetsInt = deepSideLungesSetsInt
        self.deepSideLungesRepsInt = deepSideLungesRepsInt
        self.deepSideLungesSetsAdv = deepSideLungesSetsAdv
        self.deepSideLungesRepsAdv = deepSideLungesRepsAdv
        
        self.calfRaisesWeight = calfRaisesWeight
        self.calfRaisesSets = calfRaisesSets
        self.calfRaisesReps = calfRaisesReps
        self.calfRaisesSetsInt = calfRaisesSetsInt
        self.calfRaisesRepsInt = calfRaisesRepsInt
        self.calfRaisesSetsAdv = calfRaisesSetsAdv
        self.calfRaisesRepsAdv = calfRaisesRepsAdv
        
        self.reverseLungesWeight = reverseLungesWeight
        self.reverseLungesSets = reverseLungesSets
        self.reverseLungesReps = reverseLungesReps
        self.reverseLungesSetsInt = reverseLungesSetsInt
        self.reverseLungesRepsInt = reverseLungesRepsInt
        self.reverseLungesSetsAdv = reverseLungesSetsAdv
        self.reverseLungesRepsAdv = reverseLungesRepsAdv
        
        self.oneLegSquatWeight  = oneLegSquatWeight
        self.oneLegSquatSets = oneLegSquatSets
        self.oneLegSquatReps = oneLegSquatReps
        self.oneLegSquatSetsInt = oneLegSquatSetsInt
        self.oneLegSquatRepsInt = oneLegSquatRepsInt
        self.oneLegSquatSetsAdv = oneLegSquatSetsAdv
        self.oneLegSquatRepsAdv = oneLegSquatRepsAdv
        
        self.splitSquatWeight = splitSquatWeight
        self.splitSquatSets = splitSquatSets
        self.splitSquatReps = splitSquatReps
        self.splitSquatSetsInt = splitSquatSetsInt
        self.splitSquatRepsInt = splitSquatRepsInt
        self.splitSquatSetsAdv = splitSquatSetsAdv
        self.splitSquatRepsAdv = splitSquatRepsAdv
        
        self.stationaryBikeTime = stationaryBikeTime
        self.stationaryBikeTimeInt = stationaryBikeTimeInt
        self.stationaryBikeTimeAdv = stationaryBikeTimeAdv
        self.stationaryBikeDistance = stationaryBikeDistance
        
        self.verticalLeapBest = verticalLeapBest
        self.verticalLeapAverage = verticalLeapAverage
        self.verticalLeapOne = verticalLeapOne
        self.verticalLeapTwo = verticalLeapTwo
        self.verticalLeapThree = verticalLeapThree
        self.verticalLeapFour = verticalLeapFour
        self.verticalLeapFive = verticalLeapFive
        
        self.walkingLungesSets = walkingLungesSets
        self.walkingLungesSetsInt = walkingLungesSetsInt
        self.walkingLungesSetsAdv = walkingLungesSetsAdv
        self.walkingLungesDistance = walkingLungesDistance
        self.walkingLungesDistanceInt = walkingLungesDistanceInt
        self.walkingLungesDistanceAdv = walkingLungesDistanceAdv
        
        self.boxJumpsHeight = boxJumpsHeight
        self.boxJumpsSets = boxJumpsSets
        self.boxJumpsReps = boxJumpsReps
        self.boxJumpsSetsInt = boxJumpsSetsInt
        self.boxJumpsRepsInt = boxJumpsRepsInt
        self.boxJumpsSetsAdv = boxJumpsSetsAdv
        self.boxJumpsRepsAdv = boxJumpsRepsAdv
        
        self.benchPressWeight = benchPressWeight
        self.benchPressSets = benchPressSets
        self.benchPressReps = benchPressReps
        self.benchPressSetsInt = benchPressSetsInt
        self.benchPressRepsInt = benchPressRepsInt
        self.benchPressSetsAdv = benchPressSetsAdv
        self.benchPressRepsAdv = benchPressRepsAdv
        
        self.overheadPressWeight = overheadPressWeight
        self.overheadPressSets = overheadPressSets
        self.overheadPressReps = overheadPressReps
        self.overheadPressSetsInt = overheadPressSetsInt
        self.overheadPressRepsInt = overheadPressRepsInt
        self.overheadPressSetsAdv = overheadPressSetsAdv
        self.overheadPressRepsAdv = overheadPressRepsAdv
        
        self.arnoldPressWeight = arnoldPressWeight
        self.arnoldPressSets = arnoldPressSets
        self.arnoldPressReps = arnoldPressReps
        self.arnoldPressSetsInt = arnoldPressSetsInt
        self.arnoldPressRepsInt = arnoldPressRepsInt
        self.arnoldPressSetsAdv = arnoldPressSetsAdv
        self.arnoldPressRepsAdv = arnoldPressRepsAdv
        
        self.dumbbellPressWeight = dumbbellPressWeight
        self.dumbbellPressSets = dumbbellPressSets
        self.dumbbellPressReps = dumbbellPressReps
        self.dumbbellPressSetsInt = dumbbellPressSetsInt
        self.dumbbellPressRepsInt = dumbbellPressRepsInt
        self.dumbbellPressSetsAdv = dumbbellPressSetsAdv
        self.dumbbellPressRepsAdv = dumbbellPressRepsAdv
        
        self.tricepExtensionsWeight = tricepExtensionsWeight
        self.tricepExtensionsSets = tricepExtensionsSets
        self.tricepExtensionsReps = tricepExtensionsReps
        self.tricepExtensionsSetsInt = tricepExtensionsSetsInt
        self.tricepExtensionsRepsInt = tricepExtensionsRepsInt
        self.tricepExtensionsSetsAdv = tricepExtensionsSetsAdv
        self.tricepExtensionsRepsAdv = tricepExtensionsRepsAdv
        
        self.bicepCurlsWeight = bicepCurlsWeight
        self.bicepCurlsSets = bicepCurlsSets
        self.bicepCurlsReps = bicepCurlsReps
        self.bicepCurlsSetsInt = bicepCurlsSetsInt
        self.bicepCurlsRepsInt = bicepCurlsRepsInt
        self.bicepCurlsSetsAdv = bicepCurlsSetsAdv
        self.bicepCurlsRepsAdv = bicepCurlsRepsAdv
        
        self.planksTime = planksTime
        self.planksTimeInt = planksTimeInt
        self.planksTimeAdv = planksTimeAdv
        self.planksSets = planksSets
        self.planksSetsInt = planksSetsInt
        self.planksSetsAdv = planksSetsAdv
        
        self.inclineBenchPressWeight = inclineBenchPressWeight
        self.inclineBenchPressSets = inclineBenchPressSets
        self.inclineBenchPressReps = inclineBenchPressReps
        self.inclineBenchPressSetsInt = inclineBenchPressSetsInt
        self.inclineBenchPressRepsInt = inclineBenchPressRepsInt
        self.inclineBenchPressSetsAdv = inclineBenchPressSetsAdv
        self.inclineBenchPressRepsAdv = inclineBenchPressRepsAdv
        
        self.preacherCurlsWeight = preacherCurlsWeight
        self.preacherCurlsSets = preacherCurlsSets
        self.preacherCurlsReps = preacherCurlsReps
        self.preacherCurlsSetsInt = preacherCurlsSetsInt
        self.preacherCurlsRepsInt = preacherCurlsRepsInt
        self.preacherCurlsSetsAdv = preacherCurlsSetsAdv
        self.preacherCurlsRepsAdv = preacherCurlsRepsAdv
        
        self.militaryPressWeight = militaryPressWeight
        self.militaryPressSets = militaryPressSets
        self.militaryPressReps = militaryPressReps
        self.militaryPressSetsInt = militaryPressSetsInt
        self.militaryPressRepsInt = militaryPressRepsInt
        self.militaryPressSetsAdv = militaryPressSetsAdv
        self.militaryPressRepsAdv = militaryPressRepsAdv
        
        self.sideLateralRaiseWeight = sideLateralRaiseWeight
        self.sideLateralRaiseSets = sideLateralRaiseSets
        self.sideLateralRaiseReps = sideLateralRaiseReps
        self.sideLateralRaiseSetsInt = sideLateralRaiseSets
        self.sideLateralRaiseRepsInt = sideLateralRaiseReps
        self.sideLateralRaiseSetsAdv = sideLateralRaiseSets
        self.sideLateralRaiseRepsAdv = sideLateralRaiseReps
        
        self.kickbacksWeight = kickbacksWeight
        self.kickbacksSets = kickbacksSets
        self.kickbacksReps = kickbacksReps
        self.kickbacksSetsInt = kickbacksSetsInt
        self.kickbacksRepsInt = kickbacksRepsInt
        self.kickbacksSetsAdv = kickbacksSetsAdv
        self.kickbacksRepsAdv = kickbacksRepsAdv
        
        self.dipsReps = dipsReps
        self.dipsSets = dipsSets
        
        self.forearmTwistsWeight = forearmTwistsWeight
        self.forearmTwistsSets = forearmTwistsSets
        self.forearmTwistsReps = forearemTwistsReps
        self.forearmTwistsSetsInt = forearmTwistsSetsInt
        self.forearmTwistsRepsInt = forearemTwistsRepsInt
        self.forearmTwistsSetsAdv = forearmTwistsSetsAdv
        self.forearmTwistsRepsAdv = forearemTwistsRepsAdv
        
        self.lateralSideRaisesWeight = sideLateralRaiseWeight
        self.lateralSideRaisesSets = sideLateralRaiseSets
        self.lateralSideRaisesReps = sideLateralRaiseReps
        self.lateralSideRaisesSetsInt = sideLateralRaiseSetsInt
        self.lateralSideRaisesRepsInt = sideLateralRaiseRepsInt
        self.lateralSideRaisesSetsAdv = sideLateralRaiseSetsAdv
        self.lateralSideRaisesRepsAdv = sideLateralRaiseRepsAdv
        
        
        self.sixInchesSets = sixInchesSets
        self.sixInchesTime = sixInchesTime
        self.sixInchesSetsInt = sixInchesSetsInt
        self.sixInchesTimeInt = sixInchesTimeInt
        self.sixInchesSetsAdv = sixInchesSetsAdv
        self.sixInchesTimeAdv = sixInchesTimeAdv
        
        self.uprightRowsWeight = uprightRowsWeight
        self.uprightRowsSets = uprightRowsSets
        self.uprightRowsReps = uprightRowsReps
        self.uprightRowsSetsInt = uprightRowsSetsInt
        self.uprightRowsRepsInt = uprightRowsRepsint
        self.uprightRowsSetsAdv = uprightRowsSetsAdv
        self.uprightRowsRepsAdv = uprightRowsRepsAdv
        
        self.pullupsSets = pullupsSets
        self.pullupsReps = pullupsReps
        self.pullupsSetsInt = pullupsSetsInt
        self.pullupsRepsInt = pullupsRepsInt
        self.pullupsSetsAdv = pullupsSetsAdv
        self.pullupsRepsAdv = pullupsRepsAdv
        
        
        
        self.staggerSprintsTime = staggerSprintsTime
        
        self.weightedDipsWeight = weightedDipsWeight
        self.weightedDipsSets = weightedDipsSets
        self.weightedDipsReps = weightedDipsReps
        self.weightedDipsSetsInt = weightedDipsSetsInt
        self.weightedDipsRepsInt = weightedDipsRepsInt
        self.weightedDipsSetsAdv = weightedDipsSetsAdv
        self.weightedDipsRepsAdv = weightedDipsRepsAdv
        
        self.fortyYardDashTime = fortyYardDashTime
        
        self.runTime = runTime
        self.runDistance = runDistance
        
        
        
        
        
        self.legRaiseSets = legRaiseSets
        self.legRaiseReps = legRaiseReps
        self.legRaiseSetsInt = legRaiseSetsInt
        self.legRaiseRepsInt = legRaiseRepsInt
        self.legRaiseSetsAdv = legRaiseSetsAdv
        self.legRaiseRepsAdv = legRaiseRepsAdv
        
        self.sidePlanksTime = sidePlanksTime
        self.sidePlanksTimeInt = sidePlanksTimeInt
        self.sidePlanksTimeAdv = sidePlanksTimeAdv
        self.sidePlanksSets = sidePlanksSets
        self.sidePlanksSetsInt = sidePlanksSetsInt
        self.sidePlanksSetsAdv = sidePlanksSetsAdv
        
        self.latPullWeight = latPullWeight
        self.latPullSets = latPullSets
        self.latPullReps = latPullReps
        self.latPullSetsInt = latPullSetsInt
        self.latPullRepsInt = latPullRepsInt
        self.latPullSetsAdv = latPullSetsAdv
        self.latPullRepsAdv = latPullRepsAdv
        
        self.shrugWeight = shrugWeight
        self.shrugSets = shrugSets
        self.shrugReps = shrugReps
        self.shrugSetsInt = shrugSetsInt
        self.shrugRepsInt = shrugRepsInt
        self.shrugSetsAdv = shrugSetsAdv
        self.shrugRepsAdv = shrugRepsAdv
        
        self.dumbbellCalfRaisesWeight = dumbbellCalfRaisesWeight
        self.dumbbellCalfRaisesSets = dumbbellCalfRaisesSets
        self.dumbbellCalfRaisesReps = dumbbellCalfRaisesReps
        self.dumbbellCalfRaisesSetsInt = dumbbellCalfRaisesSetsInt
        self.dumbbellCalfRaisesRepsInt = dumbbellCalfRaisesRepsInt
        self.dumbbellCalfRaisesSetsAdv = dumbbellCalfRaisesSetsAdv
        self.dumbbellCalfRaisesRepsAdv = dumbbellCalfRaisesRepsAdv
        
    }
}
