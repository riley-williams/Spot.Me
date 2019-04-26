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
    
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    
    @IBOutlet weak var RepsLabel: UILabel!
    
    
    @IBOutlet weak var SetsLabel: UILabel!
    
    
    
    
    
    var userWorkout: WorkoutInfo?
    var thisLift: LiftObject?
    var exercise = "default"
    var sportName: String?
    var positionName: String?
    var workoutLevel: String?
    var reps = 0
    var sets = 0
    var weight = 0
    var exerciseSets = 0
    var exerciseReps = 0
    var exerciseWeight = 0
    let date = Date.init()
    var history = [LiftObject]()
    var workoutType: String?
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        userWorkout = sharedData.getUserWorkoutData()
        
        
        
        // This block of if else statements controls what will be shown in the view based on the exercise and level of workout
        // The view will have information about the workout in the text edit fields where the user can change the value
        
        
        if (exercise == "Squat" && workoutLevel == "Beginner"){
            reps = userWorkout!.squatReps!
            sets = userWorkout!.squatSets!
            weight = userWorkout!.squatWeight!
        }
        
        else if (exercise == "Squat" && workoutLevel == "Intermediate"){
            reps = userWorkout!.squatRepsInt!
            sets = userWorkout!.squatSetsInt!
            weight = userWorkout!.squatWeight!
        }
        
        else if (exercise == "Squat" && workoutLevel == "Advanced"){
            reps = userWorkout!.squatRepsAdv!
            sets = userWorkout!.squatSetsAdv!
            weight = userWorkout!.squatWeight!
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Beginner"){
            reps = userWorkout!.deadliftReps!
            sets = userWorkout!.deadliftSets!
            weight = userWorkout!.deadliftWeight!
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Intermediate"){
            reps = userWorkout!.deadliftRepsInt!
            sets = userWorkout!.deadliftSetsInt!
            weight = userWorkout!.deadliftWeight!
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Advanced"){
            reps = userWorkout!.deadliftRepsAdv!
            sets = userWorkout!.deadliftSetsAdv!
            weight = userWorkout!.deadliftWeight!
        }
        
        else if (exercise == "Leg Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.legPressReps!
            sets = userWorkout!.legPressSets!
            weight = userWorkout!.legPressWeight!
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.legPressRepsInt!
            sets = userWorkout!.legPressSetsInt!
            weight = userWorkout!.legPressWeight!
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.legPressRepsAdv!
            sets = userWorkout!.legPressSetsAdv!
            weight = userWorkout!.legPressWeight!
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Beginner"){
            reps = userWorkout!.hangCleanReps!
            sets = userWorkout!.hangCleanSets!
            weight = userWorkout!.hangCleanWeight!
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Intermediate"){
            reps = userWorkout!.hangCleanRepsInt!
            sets = userWorkout!.hangCleanSetsInt!
            weight = userWorkout!.hangCleanWeight!
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Advanced"){
            reps = userWorkout!.hangCleanRepsAdv!
            sets = userWorkout!.hangCleanSetsAdv!
            weight = userWorkout!.hangCleanWeight!
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Beginner"){
            sets = userWorkout!.walkingLungesSets!
            weight = userWorkout!.walkingLungesDistance!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
        }
            
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Intermediate"){
            sets = userWorkout!.walkingLungesSetsInt!
            weight = userWorkout!.walkingLungesDistanceInt!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Advanced"){
            sets = userWorkout!.walkingLungesSetsAdv!
            weight = userWorkout!.walkingLungesDistanceAdv!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Beginner"){
            reps = userWorkout!.stepUpsReps!
            sets = userWorkout!.stepUpsSets!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Intermediate"){
            reps = userWorkout!.stepUpsRepsInt!
            sets = userWorkout!.stepUpsSetsInt!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Advanced"){
            reps = userWorkout!.stepUpsRepsAdv!
            sets = userWorkout!.stepUpsSetsAdv!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Beginner"){
            reps = userWorkout!.splitSquatReps!
            sets = userWorkout!.splitSquatSets!
            weight = userWorkout!.splitSquatWeight!
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Intermediate"){
            reps = userWorkout!.splitSquatRepsInt!
            sets = userWorkout!.splitSquatSetsInt!
            weight = userWorkout!.splitSquatWeight!
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Advanced"){
            reps = userWorkout!.splitSquatRepsAdv!
            sets = userWorkout!.splitSquatSetsAdv!
            weight = userWorkout!.splitSquatWeight!
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Beginner"){
            reps = userWorkout!.calfRaisesReps!
            sets = userWorkout!.calfRaisesSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Intermediate"){
            reps = userWorkout!.calfRaisesRepsInt!
            sets = userWorkout!.calfRaisesSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Advanced"){
            reps = userWorkout!.calfRaisesRepsAdv!
            sets = userWorkout!.calfRaisesSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Beginner"){
            reps = userWorkout!.dumbbellCalfRaisesReps!
            sets = userWorkout!.dumbbellCalfRaisesSets!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Intermediate"){
            reps = userWorkout!.dumbbellCalfRaisesRepsInt!
            sets = userWorkout!.dumbbellCalfRaisesSetsInt!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Advanced"){
            reps = userWorkout!.dumbbellCalfRaisesRepsAdv!
            sets = userWorkout!.dumbbellCalfRaisesSetsAdv!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Beginner"){
            reps = userWorkout!.oneLegSquatReps!
            sets = userWorkout!.oneLegSquatSets!
            weight = userWorkout!.oneLegSquatWeight!
        }
            
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Intermediate"){
            reps = userWorkout!.oneLegSquatRepsInt!
            sets = userWorkout!.oneLegSquatSetsInt!
            weight = userWorkout!.oneLegSquatWeight!
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Advanced"){
            reps = userWorkout!.oneLegSquatRepsAdv!
            sets = userWorkout!.oneLegSquatSetsAdv!
            weight = userWorkout!.oneLegSquatWeight!
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.hamstringCurlsReps!
            sets = userWorkout!.hamstringCurlsSets!
            weight = userWorkout!.hamstringCurlsWeight!
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.hamstringCurlsRepsInt!
            sets = userWorkout!.hamstringCurlsSetsInt!
            weight = userWorkout!.hamstringCurlsWeight!
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.hamstringCurlsRepsAdv!
            sets = userWorkout!.hamstringCurlsSetsAdv!
            weight = userWorkout!.hamstringCurlsWeight!
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.deepSideLungesReps!
            sets = userWorkout!.deepSideLungesSets!
            weight = userWorkout!.deepSideLungesWeight!
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.deepSideLungesRepsInt!
            sets = userWorkout!.deepSideLungesSetsInt!
            weight = userWorkout!.deepSideLungesWeight!
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.deepSideLungesRepsAdv!
            sets = userWorkout!.deepSideLungesSetsAdv!
            weight = userWorkout!.deepSideLungesWeight!
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.lungesReps!
            sets = userWorkout!.lungesSets!
            weight = userWorkout!.lungesWeight!
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.lungesRepsInt!
            sets = userWorkout!.lungesSetsInt!
            weight = userWorkout!.lungesWeight!
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.lungesRepsAdv!
            sets = userWorkout!.lungesSetsAdv!
            weight = userWorkout!.lungesWeight!
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.reverseLungesReps!
            sets = userWorkout!.reverseLungesSets!
            weight = userWorkout!.reverseLungesWeight!
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.reverseLungesRepsInt!
            sets = userWorkout!.reverseLungesSetsInt!
            weight = userWorkout!.reverseLungesWeight!
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.reverseLungesRepsAdv!
            sets = userWorkout!.reverseLungesSetsAdv!
            weight = userWorkout!.reverseLungesWeight!
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Beginner"){
         
            reps = userWorkout!.boxJumpsReps!
            sets = userWorkout!.boxJumpsSets!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Intermediate"){
         
            reps = userWorkout!.boxJumpsRepsInt!
            sets = userWorkout!.boxJumpsSetsInt!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Advanced"){
           
            reps = userWorkout!.boxJumpsRepsAdv!
            sets = userWorkout!.boxJumpsSetsAdv!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.benchPressReps!
            sets = userWorkout!.benchPressSets!
            weight = userWorkout!.benchPressWeight!
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.benchPressRepsInt!
            sets = userWorkout!.benchPressSetsInt!
            weight = userWorkout!.benchPressWeight!
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.benchPressRepsAdv!
            sets = userWorkout!.benchPressSetsAdv!
            weight = userWorkout!.benchPressWeight!
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.overheadPressReps!
            sets = userWorkout!.overheadPressSets!
            weight = userWorkout!.overheadPressWeight!
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.overheadPressRepsInt!
            sets = userWorkout!.overheadPressSetsInt!
            weight = userWorkout!.overheadPressWeight!
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.overheadPressRepsAdv!
            sets = userWorkout!.overheadPressSetsAdv!
            weight = userWorkout!.overheadPressWeight!
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.dumbbellPressReps!
            sets = userWorkout!.dumbbellPressSets!
            weight = userWorkout!.dumbbellPressWeight!
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.dumbbellPressRepsInt!
            sets = userWorkout!.dumbbellPressSetsInt!
            weight = userWorkout!.dumbbellPressWeight!
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.dumbbellPressRepsAdv!
            sets = userWorkout!.dumbbellPressSetsAdv!
            weight = userWorkout!.dumbbellPressWeight!
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Beginner"){
            reps = userWorkout!.tricepExtensionsReps!
            sets = userWorkout!.tricepExtensionsSets!
            weight = userWorkout!.tricepExtensionsWeight!
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Intermediate"){
            reps = userWorkout!.tricepExtensionsRepsInt!
            sets = userWorkout!.tricepExtensionsSetsInt!
            weight = userWorkout!.tricepExtensionsWeight!
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Advanced"){
            reps = userWorkout!.tricepExtensionsRepsAdv!
            sets = userWorkout!.tricepExtensionsSetsAdv!
            weight = userWorkout!.tricepExtensionsWeight!
        }
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.bicepCurlsReps!
            sets = userWorkout!.bicepCurlsSets!
            weight = userWorkout!.bicepCurlsWeight!
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.bicepCurlsRepsInt!
            sets = userWorkout!.bicepCurlsSetsInt!
            weight = userWorkout!.bicepCurlsWeight!
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.bicepCurlsRepsAdv!
            sets = userWorkout!.bicepCurlsSetsAdv!
            weight = userWorkout!.bicepCurlsWeight!
        }
            
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Beginner"){
            reps = userWorkout!.kickbacksReps!
            sets = userWorkout!.kickbacksSets!
            weight = userWorkout!.kickbacksWeight!
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Intermediate"){
            reps = userWorkout!.kickbacksRepsInt!
            sets = userWorkout!.kickbacksSetsInt!
            weight = userWorkout!.kickbacksWeight!
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Advanced"){
            reps = userWorkout!.kickbacksRepsAdv!
            sets = userWorkout!.kickbacksSetsAdv!
            weight = userWorkout!.kickbacksWeight!
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.preacherCurlsReps!
            sets = userWorkout!.preacherCurlsSets!
            weight = userWorkout!.preacherCurlsWeight!
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.preacherCurlsRepsInt!
            sets = userWorkout!.preacherCurlsSetsInt!
            weight = userWorkout!.preacherCurlsWeight!
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.preacherCurlsRepsAdv!
            sets = userWorkout!.preacherCurlsSetsAdv!
            weight = userWorkout!.preacherCurlsWeight!
        }
            
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.arnoldPressReps!
            sets = userWorkout!.arnoldPressSets!
            weight = userWorkout!.arnoldPressWeight!
        }
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.arnoldPressRepsInt!
            sets = userWorkout!.arnoldPressSetsInt!
            weight = userWorkout!.arnoldPressWeight!
        }
            
        else if (exercise == "Arnold Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.arnoldPressRepsAdv!
            sets = userWorkout!.arnoldPressSetsAdv!
            weight = userWorkout!.arnoldPressWeight!
        }
            
            
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.inclineBenchPressReps!
            sets = userWorkout!.inclineBenchPressSets!
            weight = userWorkout!.inclineBenchPressWeight!
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.inclineBenchPressRepsInt!
            sets = userWorkout!.inclineBenchPressSetsInt!
            weight = userWorkout!.inclineBenchPressWeight!
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.inclineBenchPressRepsAdv!
            sets = userWorkout!.inclineBenchPressSetsAdv!
            weight = userWorkout!.inclineBenchPressWeight!
        }
            
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Beginner"){
            reps = userWorkout!.uprightRowsReps!
            sets = userWorkout!.uprightRowsSets!
            weight = userWorkout!.uprightRowsWeight!
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Intermediate"){
            reps = userWorkout!.uprightRowsRepsInt!
            sets = userWorkout!.uprightRowsSetsInt!
            weight = userWorkout!.uprightRowsWeight!
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Advanced"){
            reps = userWorkout!.uprightRowsRepsAdv!
            sets = userWorkout!.uprightRowsSetsAdv!
            weight = userWorkout!.uprightRowsWeight!
        }
            
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Beginner"){
            reps = userWorkout!.sideLateralRaiseReps!
            sets = userWorkout!.sideLateralRaiseSets!
            weight = userWorkout!.sideLateralRaiseWeight!
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Intermediate"){
            reps = userWorkout!.sideLateralRaiseRepsInt!
            sets = userWorkout!.sideLateralRaiseSetsInt!
            weight = userWorkout!.sideLateralRaiseWeight!
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Advanced"){
            reps = userWorkout!.sideLateralRaiseRepsAdv!
            sets = userWorkout!.sideLateralRaiseSetsAdv!
            weight = userWorkout!.sideLateralRaiseWeight!
            
        }
            
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Beginner"){
            
            sets = userWorkout!.forearmTwistsSets!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Intermediate"){
            
            sets = userWorkout!.forearmTwistsSetsInt!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Advanced"){
            
            sets = userWorkout!.forearmTwistsSetsAdv!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
        }
          
        else if (exercise == "Military Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.militaryPressReps!
            sets = userWorkout!.militaryPressSets!
            weight = userWorkout!.militaryPressWeight!
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.militaryPressRepsInt!
            sets = userWorkout!.militaryPressSetsInt!
            weight = userWorkout!.militaryPressWeight!
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.militaryPressRepsAdv!
            sets = userWorkout!.militaryPressSetsAdv!
            weight = userWorkout!.militaryPressWeight!
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Beginner"){
            reps = userWorkout!.pullupsReps!
            sets = userWorkout!.pullupsSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Intermediate"){
            reps = userWorkout!.pullupsRepsInt!
            sets = userWorkout!.pullupsSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Advanced"){
            reps = userWorkout!.pullupsRepsAdv!
            sets = userWorkout!.pullupsSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Beginner"){
            reps = userWorkout!.weightedDipsReps!
            sets = userWorkout!.weightedDipsSets!
            weight = userWorkout!.weightedDipsWeight!
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Intermediate"){
            reps = userWorkout!.weightedDipsRepsInt!
            sets = userWorkout!.weightedDipsSetsInt!
            weight = userWorkout!.weightedDipsWeight!
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Advanced"){
            reps = userWorkout!.weightedDipsRepsAdv!
            sets = userWorkout!.weightedDipsSetsAdv!
            weight = userWorkout!.weightedDipsWeight!
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Beginner"){
            reps = userWorkout!.legRaiseReps!
            sets = userWorkout!.legRaiseSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Intermediate"){
            reps = userWorkout!.legRaiseRepsInt!
            sets = userWorkout!.legRaiseSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Advanced"){
            reps = userWorkout!.legRaiseRepsAdv!
            sets = userWorkout!.legRaiseSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Beginner"){
            reps = userWorkout!.shrugReps!
            sets = userWorkout!.shrugSets!
            weight = userWorkout!.shrugWeight!
        }
            
            
        else if (exercise == "Shrugs" && workoutLevel == "Intermediate"){
            reps = userWorkout!.shrugRepsInt!
            sets = userWorkout!.shrugSetsInt!
            weight = userWorkout!.shrugWeight!
        }
            
            
        else if (exercise == "Shrugs" && workoutLevel == "Advanced"){
            reps = userWorkout!.shrugRepsAdv!
            sets = userWorkout!.shrugSetsAdv!
            weight = userWorkout!.shrugWeight!
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Beginner"){
            reps = userWorkout!.latPullReps!
            sets = userWorkout!.latPullSets!
            weight = userWorkout!.latPullWeight!
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.latPullRepsInt!
            sets = userWorkout!.latPullSetsInt!
            weight = userWorkout!.latPullWeight!
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Advanced"){
            reps = userWorkout!.latPullRepsAdv!
            sets = userWorkout!.latPullSetsAdv!
            weight = userWorkout!.latPullWeight!
        }
            
        
            
        else if (exercise == "Dips"){
            reps = userWorkout!.dipsReps!
            sets = userWorkout!.dipsSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            
        }
        
        
        
        
        
        // Displays the information in the view
        ExerciseLabel.text = exercise
        RepsTextField.text = "\(reps)"
        SetsTextField.text = "\(sets)"
        weightTextField.text = "\(weight)"
        
        self.ExerciseDescriptionTextView.layer.borderColor = UIColor.black.cgColor
        self.ExerciseDescriptionTextView.layer.borderWidth = 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let repsCheck: Int? = Int(RepsTextField.text!)
        let setsCheck: Int? = Int(RepsTextField.text!)
        let weightCheck: Int? = Int(RepsTextField.text!)
        
        
        
        // This block of if else statements controls where the text from the fields is going
        // we have to specify the exercise name and the level of workout so we can alter the
        // correct variable in the userWorkout
        
        
        
        if (exercise == "Squat" && workoutLevel == "Beginner"){
            userWorkout!.squatSets = Int(SetsTextField.text!)
            userWorkout!.squatReps = Int(RepsTextField.text!)
            userWorkout!.squatWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Squat" && workoutLevel == "Intermediate"){
            userWorkout!.squatSetsInt = Int(SetsTextField.text!)
            userWorkout!.squatRepsInt = Int(RepsTextField.text!)
            userWorkout!.squatWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Squat" && workoutLevel == "Advanced"){
            userWorkout!.squatSetsAdv = Int(SetsTextField.text!)
            userWorkout!.squatRepsAdv = Int(RepsTextField.text!)
            userWorkout!.squatWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Beginner"){
            userWorkout!.deadliftSets = Int(SetsTextField.text!)
            userWorkout!.deadliftReps = Int(RepsTextField.text!)
            userWorkout!.deadliftWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Intermediate"){
            userWorkout!.deadliftSetsInt = Int(SetsTextField.text!)
            userWorkout!.deadliftRepsInt = Int(RepsTextField.text!)
            userWorkout!.deadliftWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Advanced"){
            userWorkout!.deadliftSetsAdv = Int(SetsTextField.text!)
            userWorkout!.deadliftRepsAdv = Int(RepsTextField.text!)
            userWorkout!.deadliftWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Leg Press" && workoutLevel == "Beginner"){
            userWorkout!.legPressSets = Int(SetsTextField.text!)
            userWorkout!.legPressReps = Int(RepsTextField.text!)
            userWorkout!.legPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Intermediate"){
            userWorkout!.legPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.legPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.legPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Advanced"){
            userWorkout!.legPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.legPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.legPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Beginner"){
            userWorkout!.hangCleanSets = Int(SetsTextField.text!)
            userWorkout!.hangCleanReps = Int(RepsTextField.text!)
            userWorkout!.hangCleanWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Intermediate"){
            userWorkout!.hangCleanSetsInt = Int(SetsTextField.text!)
            userWorkout!.hangCleanRepsInt = Int(RepsTextField.text!)
            userWorkout!.hangCleanWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Advanced"){
            userWorkout!.hangCleanSetsAdv = Int(SetsTextField.text!)
            userWorkout!.hangCleanRepsAdv = Int(RepsTextField.text!)
            userWorkout!.hangCleanWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Beginner"){
            userWorkout!.walkingLungesSets = Int(SetsTextField.text!)
            userWorkout!.walkingLungesDistance = Int(weightTextField.text!)
        }
        
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Intermediate"){
            userWorkout!.walkingLungesSetsInt = Int(SetsTextField.text!)
            userWorkout!.walkingLungesDistanceInt = Int(weightTextField.text!)
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Advanced"){
            userWorkout!.walkingLungesSetsAdv = Int(SetsTextField.text!)
            userWorkout!.walkingLungesDistanceAdv = Int(weightTextField.text!)
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Beginner"){
            userWorkout!.stepUpsSets = Int(SetsTextField.text!)
            userWorkout!.stepUpsReps = Int(RepsTextField.text!)
            userWorkout!.stepUpsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Intermediate"){
            userWorkout!.stepUpsSetsInt = Int(SetsTextField.text!)
            userWorkout!.stepUpsRepsInt = Int(RepsTextField.text!)
            userWorkout!.stepUpsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Advanced"){
            userWorkout!.stepUpsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.stepUpsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.stepUpsWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Calf Raises" && workoutLevel == "Beginner"){
            userWorkout!.calfRaisesSets = Int(SetsTextField.text!)
            userWorkout!.calfRaisesReps = Int(RepsTextField.text!)
            userWorkout!.calfRaisesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Intermediate"){
            userWorkout!.calfRaisesSetsInt = Int(SetsTextField.text!)
            userWorkout!.calfRaisesRepsInt = Int(RepsTextField.text!)
            userWorkout!.calfRaisesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Advanced"){
            userWorkout!.calfRaisesSetsAdv = Int(SetsTextField.text!)
            userWorkout!.calfRaisesRepsAdv = Int(RepsTextField.text!)
            userWorkout!.calfRaisesWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "One Legged Squats" && workoutLevel == "Beginner"){
            userWorkout!.oneLegSquatSets = Int(SetsTextField.text!)
            userWorkout!.oneLegSquatReps = Int(RepsTextField.text!)
            userWorkout!.oneLegSquatWeight = Int(weightTextField.text!)
        }
        
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Intermediate"){
            userWorkout!.oneLegSquatSetsInt = Int(SetsTextField.text!)
            userWorkout!.oneLegSquatRepsInt = Int(RepsTextField.text!)
            userWorkout!.oneLegSquatWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Advanced"){
            userWorkout!.oneLegSquatSetsAdv = Int(SetsTextField.text!)
            userWorkout!.oneLegSquatRepsAdv = Int(RepsTextField.text!)
            userWorkout!.oneLegSquatWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Beginner"){
            userWorkout!.hamstringCurlsSets = Int(SetsTextField.text!)
            userWorkout!.hamstringCurlsReps = Int(RepsTextField.text!)
            userWorkout!.hamstringCurlsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Intermediate"){
            userWorkout!.hamstringCurlsSetsInt = Int(SetsTextField.text!)
            userWorkout!.hamstringCurlsRepsInt = Int(RepsTextField.text!)
            userWorkout!.hamstringCurlsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Advanced"){
            userWorkout!.hamstringCurlsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.hamstringCurlsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.hamstringCurlsWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Beginner"){
            userWorkout!.deepSideLungesSets = Int(SetsTextField.text!)
            userWorkout!.deepSideLungesReps = Int(RepsTextField.text!)
            userWorkout!.deepSideLungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Intermediate"){
            userWorkout!.deepSideLungesSetsInt = Int(SetsTextField.text!)
            userWorkout!.deepSideLungesRepsInt = Int(RepsTextField.text!)
            userWorkout!.deepSideLungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Advanced"){
            userWorkout!.deepSideLungesSetsAdv = Int(SetsTextField.text!)
            userWorkout!.deepSideLungesRepsAdv = Int(RepsTextField.text!)
            userWorkout!.deepSideLungesWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Lunges" && workoutLevel == "Beginner"){
            userWorkout!.lungesSets = Int(SetsTextField.text!)
            userWorkout!.lungesReps = Int(RepsTextField.text!)
            userWorkout!.lungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Intermediate"){
            userWorkout!.lungesSetsInt = Int(SetsTextField.text!)
            userWorkout!.lungesRepsInt = Int(RepsTextField.text!)
            userWorkout!.lungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Advanced"){
            userWorkout!.lungesSetsAdv = Int(SetsTextField.text!)
            userWorkout!.lungesRepsAdv = Int(RepsTextField.text!)
            userWorkout!.lungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Beginner"){
            userWorkout!.reverseLungesSets = Int(SetsTextField.text!)
            userWorkout!.reverseLungesReps = Int(RepsTextField.text!)
            userWorkout!.reverseLungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Intermediate"){
            userWorkout!.reverseLungesSetsInt = Int(SetsTextField.text!)
            userWorkout!.reverseLungesRepsInt = Int(RepsTextField.text!)
            userWorkout!.reverseLungesWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Advanced"){
            userWorkout!.reverseLungesSetsInt = Int(SetsTextField.text!)
            userWorkout!.reverseLungesRepsInt = Int(RepsTextField.text!)
            userWorkout!.reverseLungesWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Box Jumps" && workoutLevel == "Beginner"){
            userWorkout!.boxJumpsSets = Int(SetsTextField.text!)
            userWorkout!.boxJumpsReps = Int(RepsTextField.text!)
            userWorkout!.boxJumpsHeight = Int(weightTextField.text!)
        }
            
        
            
        else if (exercise == "Box Jumps" && workoutLevel == "Intermediate"){
            userWorkout!.boxJumpsSetsInt = Int(SetsTextField.text!)
            userWorkout!.boxJumpsRepsInt = Int(RepsTextField.text!)
            userWorkout!.boxJumpsHeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Advanced"){
            userWorkout!.boxJumpsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.boxJumpsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.boxJumpsHeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Beginner"){
            userWorkout!.splitSquatSets = Int(SetsTextField.text!)
            userWorkout!.splitSquatReps = Int(RepsTextField.text!)
            userWorkout!.splitSquatWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Intermediate"){
            userWorkout!.splitSquatSetsInt = Int(SetsTextField.text!)
            userWorkout!.splitSquatRepsInt = Int(RepsTextField.text!)
            userWorkout!.splitSquatWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Advanced"){
            userWorkout!.splitSquatSetsAdv = Int(SetsTextField.text!)
            userWorkout!.splitSquatRepsAdv = Int(RepsTextField.text!)
            userWorkout!.splitSquatWeight = Int(weightTextField.text!)
        }
        
        else if (exercise == "Bench Press" && workoutLevel == "Beginner"){
            userWorkout!.benchPressSets = Int(SetsTextField.text!)
            userWorkout!.benchPressReps = Int(RepsTextField.text!)
            userWorkout!.benchPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Intermediate"){
            userWorkout!.benchPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.benchPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.boxJumpsHeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Advanced"){
            userWorkout!.benchPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.benchPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.benchPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Beginner"){
            userWorkout!.overheadPressSets = Int(SetsTextField.text!)
            userWorkout!.overheadPressReps = Int(RepsTextField.text!)
            userWorkout!.overheadPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Intermediate"){
            userWorkout!.overheadPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.overheadPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.overheadPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Advanced"){
            userWorkout!.overheadPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.overheadPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.overheadPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Beginner"){
            userWorkout!.dumbbellPressSets = Int(SetsTextField.text!)
            userWorkout!.dumbbellPressReps = Int(RepsTextField.text!)
            userWorkout!.dumbbellPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Intermediate"){
            userWorkout!.dumbbellPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.dumbbellPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.dumbbellPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Advanced"){
            userWorkout!.dumbbellPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.dumbbellPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.dumbbellPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Beginner"){
            userWorkout!.tricepExtensionsSets = Int(SetsTextField.text!)
            userWorkout!.tricepExtensionsReps = Int(RepsTextField.text!)
            userWorkout!.tricepExtensionsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Intermediate"){
            userWorkout!.tricepExtensionsSetsInt = Int(SetsTextField.text!)
            userWorkout!.tricepExtensionsRepsInt = Int(RepsTextField.text!)
            userWorkout!.tricepExtensionsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Advanced"){
            userWorkout!.tricepExtensionsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.tricepExtensionsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.tricepExtensionsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Beginner"){
            userWorkout!.bicepCurlsSets = Int(SetsTextField.text!)
            userWorkout!.bicepCurlsReps = Int(RepsTextField.text!)
            userWorkout!.bicepCurlsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Intermediate"){
            userWorkout!.bicepCurlsSetsInt = Int(SetsTextField.text!)
            userWorkout!.bicepCurlsRepsInt = Int(RepsTextField.text!)
            userWorkout!.bicepCurlsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Advanced"){
            userWorkout!.bicepCurlsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.bicepCurlsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.bicepCurlsWeight = Int(weightTextField.text!)
        }
            
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Beginner"){
            userWorkout!.kickbacksSets = Int(SetsTextField.text!)
            userWorkout!.kickbacksReps = Int(RepsTextField.text!)
            userWorkout!.kickbacksWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Intermediate"){
            userWorkout!.kickbacksSetsInt = Int(SetsTextField.text!)
            userWorkout!.kickbacksRepsInt = Int(RepsTextField.text!)
            userWorkout!.kickbacksWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Advanced"){
            userWorkout!.kickbacksSetsAdv = Int(SetsTextField.text!)
            userWorkout!.kickbacksRepsAdv = Int(RepsTextField.text!)
            userWorkout!.kickbacksWeight = Int(weightTextField.text!)
        }
            
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Beginner"){
            userWorkout!.preacherCurlsSets = Int(SetsTextField.text!)
            userWorkout!.preacherCurlsReps = Int(RepsTextField.text!)
            userWorkout!.preacherCurlsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Intermediate"){
            userWorkout!.preacherCurlsSetsInt = Int(SetsTextField.text!)
            userWorkout!.preacherCurlsRepsInt = Int(RepsTextField.text!)
            userWorkout!.preacherCurlsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Advanced"){
            userWorkout!.preacherCurlsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.preacherCurlsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.preacherCurlsWeight = Int(weightTextField.text!)
        }
            
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Beginner"){
            userWorkout!.arnoldPressSets = Int(SetsTextField.text!)
            userWorkout!.arnoldPressReps = Int(RepsTextField.text!)
            userWorkout!.arnoldPressWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Intermediate"){
            userWorkout!.arnoldPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.arnoldPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.arnoldPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Arnold Press" && workoutLevel == "Advanced"){
            userWorkout!.arnoldPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.arnoldPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.arnoldPressWeight = Int(weightTextField.text!)
        }
            
            
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Beginner"){
            userWorkout!.inclineBenchPressSets = Int(SetsTextField.text!)
            userWorkout!.inclineBenchPressReps = Int(RepsTextField.text!)
            userWorkout!.inclineBenchPressWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Intermediate"){
            userWorkout!.inclineBenchPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.inclineBenchPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.inclineBenchPressWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Advanced"){
            userWorkout!.inclineBenchPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.inclineBenchPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.inclineBenchPressWeight = Int(weightTextField.text!)
        }
            
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Beginner"){
            userWorkout!.uprightRowsSets = Int(SetsTextField.text!)
            userWorkout!.uprightRowsReps = Int(RepsTextField.text!)
            userWorkout!.uprightRowsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Intermediate"){
            userWorkout!.uprightRowsSetsInt = Int(SetsTextField.text!)
            userWorkout!.uprightRowsRepsInt = Int(RepsTextField.text!)
            userWorkout!.uprightRowsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Advanced"){
            userWorkout!.uprightRowsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.uprightRowsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.uprightRowsWeight = Int(weightTextField.text!)
        }
            
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Beginner"){
            userWorkout!.sideLateralRaiseSets = Int(SetsTextField.text!)
            userWorkout!.sideLateralRaiseReps = Int(RepsTextField.text!)
            userWorkout!.sideLateralRaiseWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Intermediate"){
            userWorkout!.sideLateralRaiseSetsInt = Int(SetsTextField.text!)
            userWorkout!.sideLateralRaiseRepsInt = Int(RepsTextField.text!)
            userWorkout!.sideLateralRaiseWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Advanced"){
            userWorkout!.sideLateralRaiseSetsAdv = Int(SetsTextField.text!)
            userWorkout!.sideLateralRaiseRepsAdv = Int(RepsTextField.text!)
            userWorkout!.sideLateralRaiseWeight = Int(weightTextField.text!)
            
        }
            
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Beginner"){
            userWorkout!.forearmTwistsSets = Int(SetsTextField.text!)
            userWorkout!.forearmTwistsReps = Int(RepsTextField.text!)
            userWorkout!.forearmTwistsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Intermediate"){
            userWorkout!.forearmTwistsSetsInt = Int(SetsTextField.text!)
            userWorkout!.forearmTwistsRepsInt = Int(RepsTextField.text!)
            userWorkout!.forearmTwistsWeight = Int(weightTextField.text!)
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Advanced"){
            userWorkout!.forearmTwistsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.forearmTwistsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.forearmTwistsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Beginner"){
            userWorkout!.militaryPressSets = Int(SetsTextField.text!)
            userWorkout!.militaryPressReps = Int(RepsTextField.text!)
            userWorkout!.militaryPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Intermediate"){
            userWorkout!.militaryPressSetsInt = Int(SetsTextField.text!)
            userWorkout!.militaryPressRepsInt = Int(RepsTextField.text!)
            userWorkout!.militaryPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Advanced"){
            userWorkout!.militaryPressSetsAdv = Int(SetsTextField.text!)
            userWorkout!.militaryPressRepsAdv = Int(RepsTextField.text!)
            userWorkout!.militaryPressWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Beginner"){
            userWorkout!.weightedDipsSets = Int(SetsTextField.text!)
            userWorkout!.weightedDipsReps = Int(RepsTextField.text!)
            userWorkout!.weightedDipsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Intermediate"){
            userWorkout!.weightedDipsSetsInt = Int(SetsTextField.text!)
            userWorkout!.weightedDipsRepsInt = Int(RepsTextField.text!)
            userWorkout!.weightedDipsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Advanced"){
            userWorkout!.weightedDipsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.weightedDipsRepsAdv = Int(RepsTextField.text!)
            userWorkout!.weightedDipsWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Pullups" && workoutLevel == "Beginner"){
            userWorkout!.pullupsSets = Int(SetsTextField.text!)
            userWorkout!.pullupsReps = Int(RepsTextField.text!)
           
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Intermediate"){
            userWorkout!.pullupsSetsInt = Int(SetsTextField.text!)
            userWorkout!.pullupsRepsInt = Int(RepsTextField.text!)
            
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Advanced"){
            userWorkout!.pullupsSetsAdv = Int(SetsTextField.text!)
            userWorkout!.pullupsRepsAdv = Int(RepsTextField.text!)
           
        }
            
        else if (exercise == "Leg Raise" && workoutLevel == "Beginner"){
            userWorkout!.legRaiseSets = Int(SetsTextField.text!)
            userWorkout!.legRaiseReps = Int(RepsTextField.text!)
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Intermediate"){
            userWorkout!.legRaiseSetsInt = Int(SetsTextField.text!)
            userWorkout!.legRaiseRepsInt = Int(RepsTextField.text!)
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Advanced"){
            userWorkout!.legRaiseSetsAdv = Int(SetsTextField.text!)
            userWorkout!.legRaiseRepsAdv = Int(RepsTextField.text!)
            
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Beginner"){
            userWorkout!.shrugSets = Int(SetsTextField.text!)
            userWorkout!.shrugReps = Int(RepsTextField.text!)
            userWorkout!.shrugWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Intermediate"){
            userWorkout!.shrugSetsInt = Int(SetsTextField.text!)
            userWorkout!.shrugRepsInt = Int(RepsTextField.text!)
            userWorkout!.shrugWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Advanced"){
            userWorkout!.shrugSetsAdv = Int(SetsTextField.text!)
            userWorkout!.shrugRepsAdv = Int(RepsTextField.text!)
            userWorkout!.shrugWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Beginner"){
            userWorkout!.latPullSets = Int(SetsTextField.text!)
            userWorkout!.latPullReps = Int(RepsTextField.text!)
            userWorkout!.latPullWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Intermediate"){
            userWorkout!.latPullSetsInt = Int(SetsTextField.text!)
            userWorkout!.latPullRepsInt = Int(RepsTextField.text!)
            userWorkout!.latPullWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Advanced"){
            userWorkout!.latPullSetsAdv = Int(SetsTextField.text!)
            userWorkout!.latPullRepsAdv = Int(RepsTextField.text!)
            userWorkout!.latPullWeight = Int(weightTextField.text!)
        }
            
        else if (exercise == "Dips"){
            userWorkout!.pullupsSets = Int(RepsTextField.text!)
            userWorkout!.pullupsReps = Int(RepsTextField.text!)
            
        }
        
        else{}
        
        
        
        
        //block of code sends the data up to the AppDelegate before the segue
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        sharedData.passUserWorkoutData(userWorkout)
        
        // We are using an Unwind segue to control passing data back to the WorkoutDisplayViewController
        if segue.identifier == "BackToWorkout"{
        
        //Sets the Destination
        let destinationVC = segue.destination as! WorkoutDisplayViewController
            
        //Passes the data back
        destinationVC.sportName = sportName
        destinationVC.positionName = positionName
            
        
        }
        
    
        
        if Int(SetsTextField.text!) == nil{
            let wrongTypeAlert = UIAlertController(title: "Enter Numbers For Each Field", message: "You must enter a numerical value for each field", preferredStyle: .alert)
         
        
            present(wrongTypeAlert, animated: true){
                sleep(1)
            }
            
            
            
        }
        else if Int(RepsTextField.text!) == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Enter Numbers For Each Field", message: "You must enter a numerical value for each field", preferredStyle: .alert)
           
            
            present(wrongTypeAlert, animated: true){
                sleep(1)
            }
            
        }
        else if Int(weightTextField.text!) == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Enter Numbers For Each Field", message: "You must enter a numerical value for each field", preferredStyle: .alert)
            
           
            present(wrongTypeAlert, animated: true){
                sleep(1)
            }
            
        }
        
        else{
            if segue.identifier == "CompletedExercise"  {
            
            
            
            
            
            
           
            
           
            
            
            exerciseSets = Int(SetsTextField.text!)!
            exerciseReps = Int(RepsTextField.text!)!
            exerciseWeight = Int(weightTextField.text!)!
            let thisLift = LiftObject(date: date, workoutLevel: workoutLevel!, workoutType: workoutType!, exercise: exercise, sets:exerciseSets , reps: exerciseReps, weight: exerciseWeight, complete: true)
            
            history.append(thisLift)
            
            
            
            let userHistory = WorkoutHistory()
            userHistory.history = history
            
            for i in 0..<userHistory.history.count{
                print("Today's date is: \(userHistory.history[i].date!)")
                print("The Exercise is:\(userHistory.history[i].exercise!)")
                print("The Weight is:\(userHistory.history[i].weight!)")
            }
            
            let destinationVC = segue.destination as! WorkoutDisplayViewController
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
            destinationVC.history = history
            destinationVC.lift = thisLift
            destinationVC.thisExercise = exercise
        }
        
      }
        
      
    }
    
    // Do Not Delete, is the observer for the button which updates the workout
    @IBAction func GoBackButton(_ sender: Any) {
        
        
    }
    
    // Do Not Delete, is the observer for the button which completes the exercise
    @IBAction func CompletedButtonClicked(_ sender: Any) {
        
        
    }
    

}
