//
//  ExerciseDescriptionViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/15/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class ExerciseDescriptionViewController: UIViewController {
    
    
    
    @IBOutlet weak var ExerciseLabel: UILabel!
    
    @IBOutlet weak var ExerciseDescriptionTextView: UITextView!
    
    @IBOutlet weak var RepsTextField: UITextField!
    
    @IBOutlet weak var SetsTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    
    var userWorkout: SetsAndRepsCount?
    var exercise = "default"
    var sportName: String?
    var positionName: String?
    var reps = 0
    var sets = 0
    var weight = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        userWorkout = sharedData.getUserWorkoutData()
        
        if exercise == "Squat"{
            reps = userWorkout!.squatReps!
            sets = userWorkout!.squatSets!
        }
        
        print ("\(reps) Number of reps")
        ExerciseLabel.text = exercise
        RepsTextField.text = "\(reps)"
        SetsTextField.text = "\(sets)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        userWorkout!.squatSets = Int(SetsTextField.text!)
        userWorkout!.squatReps = Int(RepsTextField.text!)
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        sharedData.passUserWorkoutData(userWorkout)
        
        if segue.identifier == "BackToWorkout"{
        let destinationVC = segue.destination as! WorkoutDisplayViewController
        destinationVC.sportName = sportName
        destinationVC.positionName = positionName
        }
    }
    
    
    @IBAction func GoBackButton(_ sender: Any) {
       /* userWorkout!.squatSets = Int(SetsTextField.text!)
        userWorkout!.squatReps = Int(RepsTextField.text!)
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        sharedData.passUserWorkoutData(userWorkout)
        
        */
    }
    
    
    

}
