//
//  JumpingExerciseViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/22/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class JumpingExerciseViewController: UIViewController {
    
    
    
    @IBOutlet weak var ExerciseLabel: UILabel!
    
    
    @IBOutlet weak var ExerciseDescriptionTextView: UITextView!
    
    
    @IBOutlet weak var JumpOneLabel: UILabel!
    
    
    
    @IBOutlet weak var JumpOneTextField: UITextField!
    
    
    @IBOutlet weak var JumpTwoLabel: UILabel!
    
    
    @IBOutlet weak var JumpTwoTextField: UITextField!
    
    
    @IBOutlet weak var JumpThreeLabel: UILabel!
    
    @IBOutlet weak var JumpThreeTextField: UITextField!
    
    
    @IBOutlet weak var JumpFourLabel: UILabel!
    
    
    @IBOutlet weak var JumpFourTextField: UITextField!
    
    
    @IBOutlet weak var JumpFiveLabel: UILabel!
    
    
    @IBOutlet weak var JumpFiveTextField: UITextField!
    
    
    
    var userWorkout: WorkoutInfo?
    var exercise: String?
    var sportName: String?
    var positionName: String?
    var workoutLevel: String?

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
    
    // Controls the button Action Do not delete
    @IBAction func BackToWorkoutClicked(_ sender: Any) {
    }
    
   

}
