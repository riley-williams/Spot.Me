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
    var userWorkout: SetsAndRepsCount?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        // These two lines get data from the app delegate
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        thisUser = sharedData.getUserData()
        
        userWorkout = sharedData.getUserWorkoutData()
        if userWorkout == nil{
            userWorkout = SetsAndRepsCount(squatSets: 0, squatReps: 0, squatSetsInt: 0, squatRepsInt: 0, deadliftSets: 0, deadliftReps: 0)
            
        }
        sharedData.passUserWorkoutData(userWorkout)
        
        if thisUser == nil{
            print("User not initialized") // debug printing
        }
        
        else{
        print(thisUser!.age!) // debug printing
        }
    }
    

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
