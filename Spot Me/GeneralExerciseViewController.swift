//
//  GeneralExerciseViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/19/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class GeneralExerciseViewController: UIViewController {
    
    
    var userWorkout: WorkoutInfo?
    var exercise: String?
    var sportName: String?
    var positionName: String?
    var workoutLevel: String?
    
    
    @IBOutlet weak var ExerciseDescriptionTextView: UITextView!
    
    
    
    @IBOutlet weak var ExerciseLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Passes in the userWorkout object so we can view add and update
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        userWorkout = sharedData.getUserWorkoutData()
        
        
        
       
        
        
        ExerciseLabel.text = exercise
        self.ExerciseDescriptionTextView.layer.borderColor = UIColor.black.cgColor
        self.ExerciseDescriptionTextView.layer.borderWidth = 2
        
    }
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //passes the userWorkout back to the Appdelegate
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        sharedData.passUserWorkoutData(userWorkout)
        
        // We are using an Unwind segue to control passing data back to the WorkoutDisplayViewController
        // checks to see if segue identifier is the same
        if segue.identifier == "BackToWorkout"{
            
            //Sets the Destination
            let destinationVC = segue.destination as! WorkoutDisplayViewController
            
            //Passes the data back
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
            
        }
    
    }
    
    //crucial piece of code for the button action to work do not delete
    @IBAction func BackToWorkoutClicked(_ sender: Any) {
    }
    

}
