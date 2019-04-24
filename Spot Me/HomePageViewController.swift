//
//  HomePageViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
    
    
    var thisUser: User?
    var userWorkout: WorkoutInfo?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        // These two lines get data from the app delegate
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        thisUser = sharedData.getUserData()
        
        // this line loads in the workout data
        userWorkout = sharedData.getUserWorkoutData()
        
        // checks to see if there is a workout initiated, if not it initializes a user workout
        
        if userWorkout == nil{
            userWorkout = WorkoutInfo(squatWeight: 0, squatSets: 0, squatReps: 0, squatSetsInt: 0, squatRepsInt: 0, squatSetsAdv: 0, squatRepsAdv: 0, deadliftWeight: 0, deadliftSets: 0, deadliftReps: 0, deadliftSetsInt: 0, deadliftRepsInt: 0, deadliftSetsAdv: 0, deadliftRepsAdv: 0, legPressWeight: 0, legPressSets: 0, legPressReps: 0, legPressSetsInt: 0, legPressRepsInt: 0, legPressSetsAdv: 0, legPressRepsAdv: 0, lungesWeight: 0, lungesSets: 0, lungesReps: 0, lungesSetsInt: 0, lungesRepsInt: 0, lungesSetsAdv: 0, lungesRepsAdv: 0, hangCleanWeight: 0, hangCleanSets: 0, hangCleanReps: 0, hangCleanSetsInt: 0, hangCleanRepsInt: 0, hangCleanSetsAdv: 0, hangCleanRepsAdv: 0, stepUpsWeight: 0, stepUpsSets: 0, stepUpsReps: 0, stepUpsSetsInt: 0, stepUpsRepsInt: 0, stepUpsSetsAdv: 0, stepUpsRepsAdv: 0, hamstringCurlsWeight: 0, hamstringCurlsSets: 0, hamstringCurlsReps: 0, hamstringCurlsSetsInt: 0, hamstringCurlsRepsInt: 0, hamstringCurlsSetsAdv: 0, hamstringCurlsRepsAdv: 0, deepSideLungesWeight: 0, deepSideLungesSets: 0, deepSideLungesReps: 0, deepSideLungesSetsInt: 0, deepSideLungesRepsInt: 0, deepSideLungesSetsAdv: 0, deepSideLungesRepsAdv: 0, calfRaisesWeight: 0, calfRaisesSets: 0, calfRaisesReps: 0, calfRaisesSetsInt: 0, calfRaisesRepsInt: 0, calfRaisesSetsAdv: 0, calfRaisesRepsAdv: 0, reverseLungesWeight: 0, reverseLungesSets: 0, reverseLungesReps: 0, reverseLungesSetsInt: 0, reverseLungesRepsInt: 0, reverseLungesSetsAdv: 0, reverseLungesRepsAdv: 0, oneLegSquatWeight: 0, oneLegSquatSets: 0, oneLegSquatReps: 0, oneLegSquatSetsInt: 0, oneLegSquatRepsInt: 0, oneLegSquatSetsAdv: 0, oneLegSquatRepsAdv: 0, splitSquatWeight: 0, splitSquatSets: 0, splitSquatReps: 0, splitSquatSetsInt: 0, splitSquatRepsInt: 0, splitSquatSetsAdv: 0, splitSquatRepsAdv: 0, stationaryBikeTime: 0, stationaryBikeTimeInt: 0, stationaryBikeTimeAdv: 0, stationaryBikeDistance: 0, verticalLeapBest: 0, verticalLeapAverage: 0, verticalLeapOne: 0, verticalLeapTwo: 0, verticalLeapThree: 0, verticalLeapFour: 0, verticalLeapFive: 0, walkingLungesSets: 0, walkingLungesSetsInt: 0, walkingLungesSetsAdv: 0, walkingLungesDistance: 0, walkingLungesDistanceInt: 0, walkingLungesDistanceAdv: 0, boxJumpsHeight: 0, boxJumpsSets: 0, boxJumpsReps: 0, boxJumpsSetsInt: 0, boxJumpsRepsInt: 0, boxJumpsSetsAdv: 0, boxJumpsRepsAdv: 0, benchPressWeight: 0, benchPressSets: 0, benchPressReps: 0, benchPressSetsInt: 0, benchPressRepsInt: 0, benchPressSetsAdv: 0, benchPressRepsAdv: 0, overheadPressWeight: 0, overheadPressSets: 0, overheadPressReps: 0, overheadPressSetsInt: 0, overheadPressRepsInt: 0, overheadPressSetsAdv: 0, overheadPressRepsAdv: 0, arnoldPressWeight: 0, arnoldPressSets: 0, arnoldPressReps: 0, arnoldPressSetsInt: 0, arnoldPressRepsInt: 0, arnoldPressSetsAdv: 0, arnoldPressRepsAdv: 0, dumbbellPressWeight: 0, dumbbellPressSets: 0, dumbbellPressReps: 0, dumbbellPressSetsInt: 0, dumbbellPressRepsInt: 0, dumbbellPressSetsAdv: 0, dumbbellPressRepsAdv: 0, tricepExtensionsWeight: 0, tricepExtensionsSets: 0, tricepExtensionsReps: 0, tricepExtensionsSetsInt: 0, tricepExtensionsRepsInt: 0, tricepExtensionsSetsAdv: 0, tricepExtensionsRepsAdv: 0, bicepCurlsWeight: 0, bicepCurlsSets: 0, bicepCurlsReps: 0, bicepCurlsSetsInt: 0, bicepCurlsRepsInt: 0, bicepCurlsSetsAdv: 0, bicepCurlsRepsAdv: 0, planksTime: 0, planksTimeInt: 0, planksTimeAdv: 0, planksSets: 0, planksSetsInt: 0, planksSetsAdv: 0, inclineBenchPressWeight: 0, inclineBenchPressSets: 0, inclineBenchPressReps: 0, inclineBenchPressSetsInt: 0, inclineBenchPressRepsInt: 0, inclineBenchPressSetsAdv: 0, inclineBenchPressRepsAdv: 0, preacherCurlsWeight: 0, preacherCurlsSetsInt: 0, preacherCurlsReps: 0, preacherCurlsSets: 0, preacherCurlsRepsInt: 0, preacherCurlsSetsAdv: 0, preacherCurlsRepsAdv: 0, militaryPressWeight: 0, militaryPressSets: 0, militaryPressReps: 0, militaryPressSetsInt: 0, militaryPressRepsInt: 0, militaryPressSetsAdv: 0, militaryPressRepsAdv: 0, sideLateralRaiseWeight: 0, sideLateralRaiseSets: 0, sideLateralRaiseReps: 0, sideLateralRaiseSetsInt: 0, sideLateralRaiseRepsInt: 0, sideLateralRaiseSetsAdv: 0, sideLateralRaiseRepsAdv: 0, kickbacksWeight: 0, kickbacksSets: 0, kickbacksReps: 0, kickbacksSetsInt: 0, kickbacksRepsInt: 0, kickbacksSetsAdv: 0, kickbacksRepsAdv: 0, dipsReps: 0, dipsSets: 0, forearmTwistsWeight: 0, forearmTwistsSets: 0, forearemTwistsReps: 0, forearmTwistsSetsInt: 0, forearemTwistsRepsInt: 0, forearmTwistsSetsAdv: 0, forearemTwistsRepsAdv: 0, sixInchesSets: 0, sixInchesTime: 0, sixInchesSetsInt: 0, sixInchesTimeInt: 0, sixInchesSetsAdv: 0, sixInchesTimeAdv: 0, uprightRowsWeight: 0, uprightRowsSets: 0, uprightRowsReps: 0, uprightRowsSetsInt: 0, uprightRowsRepsint: 0, uprightRowsSetsAdv: 0, uprightRowsRepsAdv: 0, pullupsSets: 0, pullupsReps: 0, pullupsSetsInt: 0, pullupsRepsInt: 0, pullupsSetsAdv: 0, pullupsRepsAdv: 0, staggerSprintsTime: 0, weightedDipsWeight: 0, weightedDipsSets: 0, weightedDipsReps: 0, weightedDipsSetsInt: 0, weightedDipsRepsInt: 0, weightedDipsSetsAdv: 0, weightedDipsRepsAdv: 0, fortyYardDashTime: 0, runTime: 0, runDistance: 0, legRaiseSets: 0, legRaiseReps: 0, legRaiseSetsInt: 0, legRaiseRepsInt: 0, legRaiseSetsAdv: 0, legRaiseRepsAdv: 0, sidePlanksTime: 0, sidePlanksTimeInt: 0, sidePlanksTimeAdv: 0, sidePlanksSets: 0, sidePlanksSetsInt: 0, sidePlanksSetsAdv: 0, latPullWeight: 0, latPullSets: 0, latPullReps: 0, latPullSetsInt: 0, latPullRepsInt: 0, latPullSetsAdv: 0, latPullRepsAdv: 0, shrugWeight: 0, shrugSets: 0, shrugReps: 0, shrugSetsInt: 0, shrugRepsInt: 0, shrugSetsAdv: 0, shrugRepsAdv: 0, dumbbellCalfRaisesWeight: 0, dumbbellCalfRaisesSets: 0, dumbbellCalfRaisesReps: 0, dumbbellCalfRaisesSetsInt: 0, dumbbellCalfRaisesRepsInt: 0, dumbbellCalfRaisesSetsAdv: 0, dumbbellCalfRaisesRepsAdv: 0)
            
        }
        
        //passing the instantiated user to the AppDelegate so other views can grab that data
        sharedData.passUserWorkoutData(userWorkout)
        
        if thisUser == nil{
            print("User not initialized") // debug printing
        }
        
        else{
        print(thisUser!.age!) // debug printing
        }
    }
    

    // These four button functions control where the user goes
    @IBAction func FitnessDataButtonClicked(_ sender: Any) {
        AppDelegate.showFitnessData()
    }
    
    @IBAction func NutritionButtonClicked(_ sender: Any) {
        AppDelegate.showNutrition()
    }
    
    
    @IBAction func WorkoutPlansButtonClicked(_ sender: Any) {
        AppDelegate.showWorkouts()
    }
    
    
    @IBAction func ChartsButtonClicked(_ sender: Any) {
        AppDelegate.showCharts()
    }
    
    
    
    
    
    
    
}
