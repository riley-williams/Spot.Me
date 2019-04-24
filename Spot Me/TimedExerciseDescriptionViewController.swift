//
//  OtherExerciseDescriptionViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/19/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class TimedExerciseDescriptionViewController: UIViewController {
    
    
    var userWorkout: WorkoutInfo?
    var exercise: String?
    var sportName: String?
    var positionName: String?
    var workoutLevel: String?
    var timeMin = 0
    var timeSec = 00
    var sets = 0
    var timeData = 0
    var distance: Float?
    
    
    @IBOutlet weak var ExerciseLabel: UILabel!
    
    
    @IBOutlet weak var TimeTextField: UITextField!
    
    @IBOutlet weak var SetsLabel: UILabel!
    
    @IBOutlet weak var ExerciseDescriptionTextView: UITextView!
    
    @IBOutlet weak var SetsTextField: UITextField!
    
    @IBOutlet weak var TimeSecondsTextField: UITextField!
    
    
    @IBOutlet weak var DistanceTextField: UITextField!
    
    
    @IBOutlet weak var DistanceLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let sharedData = UIApplication.shared.delegate as! AppDelegate
        userWorkout = sharedData.getUserWorkoutData()
        
        
        // Do any additional setup after loading the view.
        
        if distance == nil{
            distance = 0
        }
        ExerciseLabel.text = exercise
        self.ExerciseDescriptionTextView.layer.borderColor = UIColor.black.cgColor
        self.ExerciseDescriptionTextView.layer.borderWidth = 2
        
        if (exercise == "Six Inches" && workoutLevel == "Beginner"){
            timeMin = userWorkout!.sixInchesTime!/60
            timeSec = userWorkout!.sixInchesTime!%60
            sets = userWorkout!.sixInchesSets!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
        }
            
            
        else if (exercise == "Six Inches" && workoutLevel == "Intermediate"){
            timeMin = userWorkout!.sixInchesTimeInt!/60
            timeSec = userWorkout!.sixInchesTimeInt!%60
            sets = userWorkout!.sixInchesSets!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
        }
            
        else if (exercise == "Six Inches" && workoutLevel == "Advanced"){
            
            timeMin = userWorkout!.sixInchesTimeAdv!/60
            timeSec = userWorkout!.sixInchesTimeAdv!%60
            sets = userWorkout!.sixInchesSets!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
            
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Beginner"){
            timeMin = userWorkout!.stationaryBikeTime!/60
            timeSec = userWorkout!.stationaryBikeTime!%60
            distance = userWorkout!.stationaryBikeDistance!
            SetsTextField.isHidden = true
            SetsLabel.isHidden = true
            
        }
            
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Intermediate"){
            timeMin = userWorkout!.stationaryBikeTimeInt!/60
            timeSec = userWorkout!.stationaryBikeTimeInt!%60
            distance = userWorkout!.stationaryBikeDistance!
            SetsTextField.isHidden = true
            SetsLabel.isHidden = true
            
        }
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Advanced"){
            
            timeMin = userWorkout!.stationaryBikeTimeAdv!/60
            timeSec = userWorkout!.stationaryBikeTimeAdv!%60
            distance = userWorkout!.stationaryBikeDistance!
            SetsTextField.isHidden = true
            SetsLabel.isHidden = true
            
        }
        
        else if (exercise == "Side Planks" && workoutLevel == "Beginner"){
            timeMin = userWorkout!.sidePlanksTime!/60
            timeSec = userWorkout!.sidePlanksTime!%60
            sets = userWorkout!.sidePlanksSets!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
        }
            
            
        else if (exercise == "Side Planks" && workoutLevel == "Intermediate"){
            timeMin = userWorkout!.sidePlanksTimeInt!/60
            timeSec = userWorkout!.sidePlanksTimeInt!%60
            sets = userWorkout!.sidePlanksSetsInt!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
        }
            
        else if (exercise == "Side Planks" && workoutLevel == "Advanced"){
            
            timeMin = userWorkout!.sidePlanksTimeAdv!/60
            timeSec = userWorkout!.sidePlanksTimeAdv!%60
            sets = userWorkout!.sidePlanksSetsAdv!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
            
            
        }
        
        else if (exercise == "Planks" && workoutLevel == "Beginner"){
            timeMin = userWorkout!.planksTime!/60
            timeSec = userWorkout!.planksTime!%60
            sets = userWorkout!.sidePlanksSets!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
        }
            
            
        else if (exercise == "Planks" && workoutLevel == "Intermediate"){
            timeMin = userWorkout!.planksTimeInt!/60
            timeSec = userWorkout!.planksTimeInt!%60
            sets = userWorkout!.planksSetsInt!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
        }
            
        else if (exercise == "Planks" && workoutLevel == "Advanced"){
            
            timeMin = userWorkout!.planksTimeAdv!/60
            timeSec = userWorkout!.planksTimeAdv!%60
            sets = userWorkout!.planksSetsAdv!
            DistanceTextField.isHidden = true
            DistanceLabel.isHidden = true
        }
        
        TimeTextField.text = "\(timeMin)"
        
        if timeSec == 0{
           TimeSecondsTextField.text = "00"
        }
        else{
        TimeSecondsTextField.text = "\(timeSec)"
        }
        
        SetsTextField.text = "\(sets)"
        
        DistanceTextField.text = "\(distance!)"
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (exercise == "Six Inches" && workoutLevel == "Beginner"){
            userWorkout!.sixInchesSets = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sixInchesTime = timeData
        }
        
        else if (exercise == "Six Inches" && workoutLevel == "Intermediate"){
            userWorkout!.sixInchesSetsInt = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sixInchesTimeInt = timeData
        }
        
        else if (exercise == "Six Inches" && workoutLevel == "Advanced"){
            userWorkout!.sixInchesSetsAdv = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sixInchesTimeAdv = timeData
        }
        
        else if (exercise == "Side Planks" && workoutLevel == "Beginner"){
            userWorkout!.sidePlanksSets = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sidePlanksTime = timeData
        }
            
        else if (exercise == "Side Planks" && workoutLevel == "Intermediate"){
            userWorkout!.sidePlanksSetsInt = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sidePlanksTimeInt = timeData
        }
            
        else if (exercise == "Side Planks" && workoutLevel == "Advanced"){
            userWorkout!.sidePlanksSetsAdv = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.sidePlanksTimeAdv = timeData
        }
            
        else if (exercise == "Planks" && workoutLevel == "Beginner"){
            userWorkout!.planksSets = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.planksTime = timeData
        }
            
        else if (exercise == "Planks" && workoutLevel == "Intermediate"){
            userWorkout!.planksSetsInt = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.planksTimeInt = timeData
        }
            
        else if (exercise == "Planks" && workoutLevel == "Advanced"){
            userWorkout!.planksSetsAdv = Int(SetsTextField.text!)
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.planksTimeAdv = timeData
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Beginner"){
            timeMin = userWorkout!.stationaryBikeTime!/60
            timeSec = userWorkout!.stationaryBikeTime!%60
            userWorkout!.stationaryBikeDistance = Float(DistanceTextField.text!)!
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.stationaryBikeTime = timeData
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Int"){
            timeMin = userWorkout!.stationaryBikeTime!/60
            timeSec = userWorkout!.stationaryBikeTime!%60
            userWorkout!.stationaryBikeDistance = Float(DistanceTextField.text!)!
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.stationaryBikeTimeInt = timeData
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Advanced"){
            timeMin = userWorkout!.stationaryBikeTime!/60
            timeSec = userWorkout!.stationaryBikeTime!%60
            userWorkout!.stationaryBikeDistance = Float(DistanceTextField.text!)!
            timeData = (Int(TimeTextField.text!)! * 60) + Int(TimeSecondsTextField.text!)!
            userWorkout!.stationaryBikeTimeAdv = timeData
        }
        
        
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        sharedData.passUserWorkoutData(userWorkout)
        
        
        if segue.identifier == "BackToWorkout"{
            //Sets the Destination
            let destinationVC = segue.destination as! WorkoutDisplayViewController
            
            //Passes the data back
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
        }
    }
    
    
    @IBAction func BackToWorkoutClicked(_ sender: Any) {
    }
    

}
