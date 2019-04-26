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
    var globalHistory = [LiftObject]()
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
            ExerciseDescriptionTextView.text = "    Begin with your feet at about shoulder width.  Place hands comfortably outside shoulder width.  Rest the bar on your traps.  Un-rack the weight and take a few steps backwards.  Brace your core by tightening up your abs.  Take a breath in and hold it on the way down.  Break at the hips and slowly squat down until you reach a 90-degree angle with your knees. Be sure your knees do not go past your toes.  Drive through the balls of your feet and explode upward to the starting position.  Breathe out on the way up"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Intermediate"){
            reps = userWorkout!.squatRepsInt!
            sets = userWorkout!.squatSetsInt!
            weight = userWorkout!.squatWeight!
            ExerciseDescriptionTextView.text = "    Begin with your feet at about shoulder width.  Place hands comfortably outside shoulder width.  Rest the bar on your traps.  Un-rack the weight and take a few steps backwards.  Brace your core by tightening up your abs.  Take a breath in and hold it on the way down.  Break at the hips and slowly squat down until you reach a 90-degree angle with your knees. Be sure your knees do not go past your toes.  Drive through the balls of your feet and explode upward to the starting position.  Breathe out on the way up"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Advanced"){
            reps = userWorkout!.squatRepsAdv!
            sets = userWorkout!.squatSetsAdv!
            weight = userWorkout!.squatWeight!
            ExerciseDescriptionTextView.text = "    Begin with your feet at about shoulder width.  Place hands comfortably outside shoulder width.  Rest the bar on your traps.  Un-rack the weight and take a few steps backwards.  Brace your core by tightening up your abs.  Take a breath in and hold it on the way down.  Break at the hips and slowly squat down until you reach a 90-degree angle with your knees. Be sure your knees do not go past your toes.  Drive through the balls of your feet and explode upward to the starting position.  Breathe out on the way up"
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Beginner"){
            reps = userWorkout!.deadliftReps!
            sets = userWorkout!.deadliftSets!
            weight = userWorkout!.deadliftWeight!
            ExerciseDescriptionTextView.text = "Deadlift:  Walk up to the bar and let the bar touch your shins.  Your feet should be about shoulder width.  Grip the bar so that your elbows are just outside of your knees.  Sit back and focus on maintaining a straight back through out the lift.  As you ascend your knees should lock before your hips.  Drive through the balls of your feet and think about pushing your feet through the floor and your hips toward the wall.  Let your arms hang naturally and do not shrug your shoulders.  Once you are standing straight up you have completed the eccentric portion of the movement.  Go back down by first breaking at the hips and then the knees.  Slowly lower the weight until it is completely on the ground. "
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Intermediate"){
            reps = userWorkout!.deadliftRepsInt!
            sets = userWorkout!.deadliftSetsInt!
            weight = userWorkout!.deadliftWeight!
            ExerciseDescriptionTextView.text = "Deadlift:  Walk up to the bar and let the bar touch your shins.  Your feet should be about shoulder width.  Grip the bar so that your elbows are just outside of your knees.  Sit back and focus on maintaining a straight back through out the lift.  As you ascend your knees should lock before your hips.  Drive through the balls of your feet and think about pushing your feet through the floor and your hips toward the wall.  Let your arms hang naturally and do not shrug your shoulders.  Once you are standing straight up you have completed the eccentric portion of the movement.  Go back down by first breaking at the hips and then the knees.  Slowly lower the weight until it is completely on the ground. "
        }
        
        else if (exercise == "Deadlift" && workoutLevel == "Advanced"){
            reps = userWorkout!.deadliftRepsAdv!
            sets = userWorkout!.deadliftSetsAdv!
            weight = userWorkout!.deadliftWeight!
            ExerciseDescriptionTextView.text = "Deadlift:  Walk up to the bar and let the bar touch your shins.  Your feet should be about shoulder width.  Grip the bar so that your elbows are just outside of your knees.  Sit back and focus on maintaining a straight back through out the lift.  As you ascend your knees should lock before your hips.  Drive through the balls of your feet and think about pushing your feet through the floor and your hips toward the wall.  Let your arms hang naturally and do not shrug your shoulders.  Once you are standing straight up you have completed the eccentric portion of the movement.  Go back down by first breaking at the hips and then the knees.  Slowly lower the weight until it is completely on the ground. "
        }
        
        else if (exercise == "Leg Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.legPressReps!
            sets = userWorkout!.legPressSets!
            weight = userWorkout!.legPressWeight!
            ExerciseDescriptionTextView.text = "    Begin with your back flat against the backrest and your hands firmly gripped on the handles.  Adjust foot position to target different parts of your muscles.  Make sure your feet are pointed slightly out.  Slowly press and release the locking mechanism.  Throughout this exercise you should never lock your legs."
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.legPressRepsInt!
            sets = userWorkout!.legPressSetsInt!
            weight = userWorkout!.legPressWeight!
            ExerciseDescriptionTextView.text = "    Begin with your back flat against the backrest and your hands firmly gripped on the handles.  Adjust foot position to target different parts of your muscles.  Make sure your feet are pointed slightly out.  Slowly press and release the locking mechanism.  Throughout this exercise you should never lock your legs."
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.legPressRepsAdv!
            sets = userWorkout!.legPressSetsAdv!
            weight = userWorkout!.legPressWeight!
            ExerciseDescriptionTextView.text = "    Begin with your back flat against the backrest and your hands firmly gripped on the handles.  Adjust foot position to target different parts of your muscles.  Make sure your feet are pointed slightly out.  Slowly press and release the locking mechanism.  Throughout this exercise you should never lock your legs."
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Beginner"){
            reps = userWorkout!.hangCleanReps!
            sets = userWorkout!.hangCleanSets!
            weight = userWorkout!.hangCleanWeight!
            ExerciseDescriptionTextView.text = "Begin with a shoulder width, double overhand or hook grip, with the bar hanging at the mid thigh position. Your back should be straight and inclined slightly forward. Begin by aggressively extending through the hips, knees and ankles, driving the weight upward."
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Intermediate"){
            reps = userWorkout!.hangCleanRepsInt!
            sets = userWorkout!.hangCleanSetsInt!
            weight = userWorkout!.hangCleanWeight!
            ExerciseDescriptionTextView.text = "Begin with a shoulder width, double overhand or hook grip, with the bar hanging at the mid thigh position. Your back should be straight and inclined slightly forward. Begin by aggressively extending through the hips, knees and ankles, driving the weight upward."
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Advanced"){
            reps = userWorkout!.hangCleanRepsAdv!
            sets = userWorkout!.hangCleanSetsAdv!
            weight = userWorkout!.hangCleanWeight!
            ExerciseDescriptionTextView.text = "Begin with a shoulder width, double overhand or hook grip, with the bar hanging at the mid thigh position. Your back should be straight and inclined slightly forward. Begin by aggressively extending through the hips, knees and ankles, driving the weight upward."
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Beginner"){
            sets = userWorkout!.walkingLungesSets!
            weight = userWorkout!.walkingLungesDistance!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
            ExerciseDescriptionTextView.text = "Begin standing with your feet shoulder width apart and your hands on your hips.Step forward with one leg, flexing the knees to drop your hips. Descend until your rear knee nearly touches the ground. Your posture should remain upright, and your front knee should stay above the front foot.Drive through the heel of your lead foot and extend both knees to raise yourself back up. Step forward with your rear foot, repeating the lunge on the opposite leg."
        }
            
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Intermediate"){
            sets = userWorkout!.walkingLungesSetsInt!
            weight = userWorkout!.walkingLungesDistanceInt!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
            ExerciseDescriptionTextView.text = "Begin standing with your feet shoulder width apart and your hands on your hips.Step forward with one leg, flexing the knees to drop your hips. Descend until your rear knee nearly touches the ground. Your posture should remain upright, and your front knee should stay above the front foot.Drive through the heel of your lead foot and extend both knees to raise yourself back up. Step forward with your rear foot, repeating the lunge on the opposite leg."
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Advanced"){
            sets = userWorkout!.walkingLungesSetsAdv!
            weight = userWorkout!.walkingLungesDistanceAdv!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            WeightLabel.text = "Distance"
            ExerciseDescriptionTextView.text = "Begin standing with your feet shoulder width apart and your hands on your hips.Step forward with one leg, flexing the knees to drop your hips. Descend until your rear knee nearly touches the ground. Your posture should remain upright, and your front knee should stay above the front foot.Drive through the heel of your lead foot and extend both knees to raise yourself back up. Step forward with your rear foot, repeating the lunge on the opposite leg."
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Beginner"){
            reps = userWorkout!.stepUpsReps!
            sets = userWorkout!.stepUpsSets!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Starting Position Stand in front of a step, bench or stair with back, legs and arms straight, feet hip-distance apart, and weights in each hand (palms facing the body). Action EXHALE: With right leg, step onto the center of the bench and straighten your right leg at the top."
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Intermediate"){
            reps = userWorkout!.stepUpsRepsInt!
            sets = userWorkout!.stepUpsSetsInt!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Starting Position Stand in front of a step, bench or stair with back, legs and arms straight, feet hip-distance apart, and weights in each hand (palms facing the body). Action EXHALE: With right leg, step onto the center of the bench and straighten your right leg at the top."
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Advanced"){
            reps = userWorkout!.stepUpsRepsAdv!
            sets = userWorkout!.stepUpsSetsAdv!
            weight = userWorkout!.stepUpsWeight!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Starting Position Stand in front of a step, bench or stair with back, legs and arms straight, feet hip-distance apart, and weights in each hand (palms facing the body). Action EXHALE: With right leg, step onto the center of the bench and straighten your right leg at the top."
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Beginner"){
            reps = userWorkout!.splitSquatReps!
            sets = userWorkout!.splitSquatSets!
            weight = userWorkout!.splitSquatWeight!
            ExerciseDescriptionTextView.text = "Engage your upper traps as you would with a barbell squat and position the bar across this area. Step back out of the rack and then take a long step forwards, raising your back heel so your foot is supported by the toes. Retract your shoulders, and keep your chest and chin elevated"
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Intermediate"){
            reps = userWorkout!.splitSquatRepsInt!
            sets = userWorkout!.splitSquatSetsInt!
            weight = userWorkout!.splitSquatWeight!
            ExerciseDescriptionTextView.text = "Engage your upper traps as you would with a barbell squat and position the bar across this area. Step back out of the rack and then take a long step forwards, raising your back heel so your foot is supported by the toes. Retract your shoulders, and keep your chest and chin elevated"
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Advanced"){
            reps = userWorkout!.splitSquatRepsAdv!
            sets = userWorkout!.splitSquatSetsAdv!
            weight = userWorkout!.splitSquatWeight!
            ExerciseDescriptionTextView.text = "Engage your upper traps as you would with a barbell squat and position the bar across this area. Step back out of the rack and then take a long step forwards, raising your back heel so your foot is supported by the toes. Retract your shoulders, and keep your chest and chin elevated"
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Beginner"){
            reps = userWorkout!.calfRaisesReps!
            sets = userWorkout!.calfRaisesSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Stand with the balls of your feet on a step. Use a wall or something sturdy for support. Slowly lower your heels until you feel a stretch in the calves. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Intermediate"){
            reps = userWorkout!.calfRaisesRepsInt!
            sets = userWorkout!.calfRaisesSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Stand with the balls of your feet on a step. Use a wall or something sturdy for support. Slowly lower your heels until you feel a stretch in the calves. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Advanced"){
            reps = userWorkout!.calfRaisesRepsAdv!
            sets = userWorkout!.calfRaisesSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Stand with the balls of your feet on a step. Use a wall or something sturdy for support. Slowly lower your heels until you feel a stretch in the calves. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Beginner"){
            reps = userWorkout!.dumbbellCalfRaisesReps!
            sets = userWorkout!.dumbbellCalfRaisesSets!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
            ExerciseDescriptionTextView.text = "Holding dumbbells in each hand. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Intermediate"){
            reps = userWorkout!.dumbbellCalfRaisesRepsInt!
            sets = userWorkout!.dumbbellCalfRaisesSetsInt!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
            ExerciseDescriptionTextView.text = "Holding dumbbells in each hand. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Advanced"){
            reps = userWorkout!.dumbbellCalfRaisesRepsAdv!
            sets = userWorkout!.dumbbellCalfRaisesSetsAdv!
            weight = userWorkout!.dumbbellCalfRaisesWeight!
            ExerciseDescriptionTextView.text = "Holding dumbbells in each hand. Slowly raise your heels and contract the calf muscles."
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Beginner"){
            reps = userWorkout!.oneLegSquatReps!
            sets = userWorkout!.oneLegSquatSets!
            weight = userWorkout!.oneLegSquatWeight!
            ExerciseDescriptionTextView.text = "Stand with arms extended out in front. Balance on one leg with opposite leg extended straight leg forward as high as possible. Squat down as far as possible while keeping leg elevated off of floor. Keep back as straight as possible and supporting knee pointed same direction as foot supporting."
        }
            
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Intermediate"){
            reps = userWorkout!.oneLegSquatRepsInt!
            sets = userWorkout!.oneLegSquatSetsInt!
            weight = userWorkout!.oneLegSquatWeight!
            ExerciseDescriptionTextView.text = "Stand with arms extended out in front. Balance on one leg with opposite leg extended straight leg forward as high as possible. Squat down as far as possible while keeping leg elevated off of floor. Keep back as straight as possible and supporting knee pointed same direction as foot supporting."
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Advanced"){
            reps = userWorkout!.oneLegSquatRepsAdv!
            sets = userWorkout!.oneLegSquatSetsAdv!
            weight = userWorkout!.oneLegSquatWeight!
            ExerciseDescriptionTextView.text = "Stand with arms extended out in front. Balance on one leg with opposite leg extended straight leg forward as high as possible. Squat down as far as possible while keeping leg elevated off of floor. Keep back as straight as possible and supporting knee pointed same direction as foot supporting."
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.hamstringCurlsReps!
            sets = userWorkout!.hamstringCurlsSets!
            weight = userWorkout!.hamstringCurlsWeight!
            ExerciseDescriptionTextView.text = "The exercise involves flexing the lower leg against resistance towards the buttocks. Other exercises that can be used to strengthen the hamstrings are the glute-ham raise and the deadlift."
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.hamstringCurlsRepsInt!
            sets = userWorkout!.hamstringCurlsSetsInt!
            weight = userWorkout!.hamstringCurlsWeight!
            ExerciseDescriptionTextView.text = "The exercise involves flexing the lower leg against resistance towards the buttocks. Other exercises that can be used to strengthen the hamstrings are the glute-ham raise and the deadlift."
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.hamstringCurlsRepsAdv!
            sets = userWorkout!.hamstringCurlsSetsAdv!
            weight = userWorkout!.hamstringCurlsWeight!
            ExerciseDescriptionTextView.text = "The exercise involves flexing the lower leg against resistance towards the buttocks. Other exercises that can be used to strengthen the hamstrings are the glute-ham raise and the deadlift."
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.deepSideLungesReps!
            sets = userWorkout!.deepSideLungesSets!
            weight = userWorkout!.deepSideLungesWeight!
            ExerciseDescriptionTextView.text = "Start standing with legs slightly wider than shoulder-distance apart and toes pointed forward. Shift your body weight to one leg bending the knee until it reaches a 90-degree angle and the other leg is straight. Glutes are pressing back behind you. Return to center and switch sides."
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.deepSideLungesRepsInt!
            sets = userWorkout!.deepSideLungesSetsInt!
            weight = userWorkout!.deepSideLungesWeight!
            ExerciseDescriptionTextView.text = "Start standing with legs slightly wider than shoulder-distance apart and toes pointed forward. Shift your body weight to one leg bending the knee until it reaches a 90-degree angle and the other leg is straight. Glutes are pressing back behind you. Return to center and switch sides."
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.deepSideLungesRepsAdv!
            sets = userWorkout!.deepSideLungesSetsAdv!
            weight = userWorkout!.deepSideLungesWeight!
            ExerciseDescriptionTextView.text = "Start standing with legs slightly wider than shoulder-distance apart and toes pointed forward. Shift your body weight to one leg bending the knee until it reaches a 90-degree angle and the other leg is straight. Glutes are pressing back behind you. Return to center and switch sides."
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.lungesReps!
            sets = userWorkout!.lungesSets!
            weight = userWorkout!.lungesWeight!
            
            ExerciseDescriptionTextView.text = "Stand tall with feet hip-width apart. Engage core. Take a big step forward with right leg and start to shift weight forward so heel hits the floor first. Lower body until right thigh is parallel to floor and right shin is vertical (it's okay if knee shifts forward a little as long as it doesn't go past right toe). If mobility allows, lightly tap left knee to ground while keeping weight in right heel. Press into right heel to drive back up to starting position. Repeat on the other side."
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.lungesRepsInt!
            sets = userWorkout!.lungesSetsInt!
            weight = userWorkout!.lungesWeight!
            ExerciseDescriptionTextView.text = "Stand tall with feet hip-width apart. Engage core. Take a big step forward with right leg and start to shift weight forward so heel hits the floor first. Lower body until right thigh is parallel to floor and right shin is vertical (it's okay if knee shifts forward a little as long as it doesn't go past right toe). If mobility allows, lightly tap left knee to ground while keeping weight in right heel. Press into right heel to drive back up to starting position. Repeat on the other side."
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.lungesRepsAdv!
            sets = userWorkout!.lungesSetsAdv!
            weight = userWorkout!.lungesWeight!
            ExerciseDescriptionTextView.text = "Stand tall with feet hip-width apart. Engage core. Take a big step forward with right leg and start to shift weight forward so heel hits the floor first. Lower body until right thigh is parallel to floor and right shin is vertical (it's okay if knee shifts forward a little as long as it doesn't go past right toe). If mobility allows, lightly tap left knee to ground while keeping weight in right heel. Press into right heel to drive back up to starting position. Repeat on the other side."
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Beginner"){
            reps = userWorkout!.reverseLungesReps!
            sets = userWorkout!.reverseLungesSets!
            weight = userWorkout!.reverseLungesWeight!
            ExerciseDescriptionTextView.text = "Begin in a standing position. Your hands should be on your hips or hanging at your sides. Look directly forward, keeping your chest up, with your feet shoulder-width apart. This will be your starting position.Initiate the movement by taking a step to the rear, allowing your hips and knees to flex to lower your body. Contacting the back leg through only the ball of the foot, descend until your knee nearly touches the ground. Use a slow and controlled motion, paying special attention to proper mechanics and posture. The knee should stay in line with the foot, and the thoracic spine should remain neutral.After a brief pause, return to the starting position by driving through the heel of the front leg to extend the knees and hips."
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Intermediate"){
            reps = userWorkout!.reverseLungesRepsInt!
            sets = userWorkout!.reverseLungesSetsInt!
            weight = userWorkout!.reverseLungesWeight!
            ExerciseDescriptionTextView.text = "Begin in a standing position. Your hands should be on your hips or hanging at your sides. Look directly forward, keeping your chest up, with your feet shoulder-width apart. This will be your starting position.Initiate the movement by taking a step to the rear, allowing your hips and knees to flex to lower your body. Contacting the back leg through only the ball of the foot, descend until your knee nearly touches the ground. Use a slow and controlled motion, paying special attention to proper mechanics and posture. The knee should stay in line with the foot, and the thoracic spine should remain neutral.After a brief pause, return to the starting position by driving through the heel of the front leg to extend the knees and hips."
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Advanced"){
            reps = userWorkout!.reverseLungesRepsAdv!
            sets = userWorkout!.reverseLungesSetsAdv!
            weight = userWorkout!.reverseLungesWeight!
            ExerciseDescriptionTextView.text = "Begin in a standing position. Your hands should be on your hips or hanging at your sides. Look directly forward, keeping your chest up, with your feet shoulder-width apart. This will be your starting position.Initiate the movement by taking a step to the rear, allowing your hips and knees to flex to lower your body. Contacting the back leg through only the ball of the foot, descend until your knee nearly touches the ground. Use a slow and controlled motion, paying special attention to proper mechanics and posture. The knee should stay in line with the foot, and the thoracic spine should remain neutral.After a brief pause, return to the starting position by driving through the heel of the front leg to extend the knees and hips."
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Beginner"){
         
            reps = userWorkout!.boxJumpsReps!
            sets = userWorkout!.boxJumpsSets!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
            ExerciseDescriptionTextView.text = "Stand in an athletic position, with your feet shoulder-width apart, at a comfortable distance from the box. When you're ready to jump, drop quickly into a quarter squat, then extend your hips, swing your arms, and push your feet through the floor to propel yourself onto the box."
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Intermediate"){
         
            reps = userWorkout!.boxJumpsRepsInt!
            sets = userWorkout!.boxJumpsSetsInt!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
            ExerciseDescriptionTextView.text = "Stand in an athletic position, with your feet shoulder-width apart, at a comfortable distance from the box. When you're ready to jump, drop quickly into a quarter squat, then extend your hips, swing your arms, and push your feet through the floor to propel yourself onto the box."
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Advanced"){
           
            reps = userWorkout!.boxJumpsRepsAdv!
            sets = userWorkout!.boxJumpsSetsAdv!
            weight = userWorkout!.boxJumpsHeight!
            WeightLabel.text = "Height(inches)"
            ExerciseDescriptionTextView.text = "Stand in an athletic position, with your feet shoulder-width apart, at a comfortable distance from the box. When you're ready to jump, drop quickly into a quarter squat, then extend your hips, swing your arms, and push your feet through the floor to propel yourself onto the box."
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.benchPressReps!
            sets = userWorkout!.benchPressSets!
            weight = userWorkout!.benchPressWeight!
            ExerciseDescriptionTextView.text = "Bench: Lay down on the bench and place your feet flat on the floor with your knees at a 90 degree angle.  Create a slight arch in your back and place your hands on the bar 3 – 4 inches outside of shoulder width.  Keep your shoulder blades back and your butt on the bench at all times.  Un-rack the weight and slowly bring the bar down until it touches your chest.  Press the bar back up to the starting position."
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.benchPressRepsInt!
            sets = userWorkout!.benchPressSetsInt!
            weight = userWorkout!.benchPressWeight!
            ExerciseDescriptionTextView.text = "Bench: Lay down on the bench and place your feet flat on the floor with your knees at a 90 degree angle.  Create a slight arch in your back and place your hands on the bar 3 – 4 inches outside of shoulder width.  Keep your shoulder blades back and your butt on the bench at all times.  Un-rack the weight and slowly bring the bar down until it touches your chest.  Press the bar back up to the starting position."
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.benchPressRepsAdv!
            sets = userWorkout!.benchPressSetsAdv!
            weight = userWorkout!.benchPressWeight!
            ExerciseDescriptionTextView.text = "Bench: Lay down on the bench and place your feet flat on the floor with your knees at a 90 degree angle.  Create a slight arch in your back and place your hands on the bar 3 – 4 inches outside of shoulder width.  Keep your shoulder blades back and your butt on the bench at all times.  Un-rack the weight and slowly bring the bar down until it touches your chest.  Press the bar back up to the starting position."
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.overheadPressReps!
            sets = userWorkout!.overheadPressSets!
            weight = userWorkout!.overheadPressWeight!
            ExerciseDescriptionTextView.text = "The press, overhead press or shoulder press is a weight training exercise with many variations, typically performed while standing, in which a weight is pressed straight upwards from racking position until the arms are locked out overhead, while the legs, lower back and abs maintain balance."
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.overheadPressRepsInt!
            sets = userWorkout!.overheadPressSetsInt!
            weight = userWorkout!.overheadPressWeight!
            ExerciseDescriptionTextView.text = "The press, overhead press or shoulder press is a weight training exercise with many variations, typically performed while standing, in which a weight is pressed straight upwards from racking position until the arms are locked out overhead, while the legs, lower back and abs maintain balance."
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.overheadPressRepsAdv!
            sets = userWorkout!.overheadPressSetsAdv!
            weight = userWorkout!.overheadPressWeight!
            ExerciseDescriptionTextView.text = "The press, overhead press or shoulder press is a weight training exercise with many variations, typically performed while standing, in which a weight is pressed straight upwards from racking position until the arms are locked out overhead, while the legs, lower back and abs maintain balance."
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.dumbbellPressReps!
            sets = userWorkout!.dumbbellPressSets!
            weight = userWorkout!.dumbbellPressWeight!
            ExerciseDescriptionTextView.text = "lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width."
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.dumbbellPressRepsInt!
            sets = userWorkout!.dumbbellPressSetsInt!
            weight = userWorkout!.dumbbellPressWeight!
            ExerciseDescriptionTextView.text = "lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width."
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.dumbbellPressRepsAdv!
            sets = userWorkout!.dumbbellPressSetsAdv!
            weight = userWorkout!.dumbbellPressWeight!
            ExerciseDescriptionTextView.text = "lie down on a flat bench with a dumbbell in each hand resting on top of your thighs. The palms of your hands will be facing each other. Then, using your thighs to help raise the dumbbells up, lift the dumbbells one at a time so that you can hold them in front of you at shoulder width."
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Beginner"){
            reps = userWorkout!.tricepExtensionsReps!
            sets = userWorkout!.tricepExtensionsSets!
            weight = userWorkout!.tricepExtensionsWeight!
            ExerciseDescriptionTextView.text = "To begin, stand up or sit down with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended. The resistance should be resting in the palms of your hands with your thumbs around it."
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Intermediate"){
            reps = userWorkout!.tricepExtensionsRepsInt!
            sets = userWorkout!.tricepExtensionsSetsInt!
            weight = userWorkout!.tricepExtensionsWeight!
            ExerciseDescriptionTextView.text = "To begin, stand up or sit down with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended. The resistance should be resting in the palms of your hands with your thumbs around it."
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Advanced"){
            reps = userWorkout!.tricepExtensionsRepsAdv!
            sets = userWorkout!.tricepExtensionsSetsAdv!
            weight = userWorkout!.tricepExtensionsWeight!
            ExerciseDescriptionTextView.text = "To begin, stand up or sit down with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended. The resistance should be resting in the palms of your hands with your thumbs around it."
        }
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.bicepCurlsReps!
            sets = userWorkout!.bicepCurlsSets!
            weight = userWorkout!.bicepCurlsWeight!
            ExerciseDescriptionTextView.text = "Stand up straight with a dumbbell in each hand at arm's length. Keep your elbows close to your torso and rotate the palms of your hands until they are facing forward. ... Now, keeping the upper arms stationary, exhale and curl the weights while contracting your biceps."
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.bicepCurlsRepsInt!
            sets = userWorkout!.bicepCurlsSetsInt!
            weight = userWorkout!.bicepCurlsWeight!
            ExerciseDescriptionTextView.text = "Stand up straight with a dumbbell in each hand at arm's length. Keep your elbows close to your torso and rotate the palms of your hands until they are facing forward. ... Now, keeping the upper arms stationary, exhale and curl the weights while contracting your biceps."
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.bicepCurlsRepsAdv!
            sets = userWorkout!.bicepCurlsSetsAdv!
            weight = userWorkout!.bicepCurlsWeight!
            ExerciseDescriptionTextView.text = "Stand up straight with a dumbbell in each hand at arm's length. Keep your elbows close to your torso and rotate the palms of your hands until they are facing forward. ... Now, keeping the upper arms stationary, exhale and curl the weights while contracting your biceps."
        }
            
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Beginner"){
            reps = userWorkout!.kickbacksReps!
            sets = userWorkout!.kickbacksSets!
            weight = userWorkout!.kickbacksWeight!
            ExerciseDescriptionTextView.text = "place the left knee on the bench, keep the right knee bent with the foot flat on the floorbend forward from the hips, and support yourself by placing the left hand on the bench your upper body should be parallel to the floor and the head facing down. Bend the right arm and raise the elbow past the torso. Keeping the elbow in place, push the dumbbell back and up by extending the arm backwards. at full extension momentarily pause, then slowly return to the starting position."
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Intermediate"){
            reps = userWorkout!.kickbacksRepsInt!
            sets = userWorkout!.kickbacksSetsInt!
            weight = userWorkout!.kickbacksWeight!
            ExerciseDescriptionTextView.text = "place the left knee on the bench, keep the right knee bent with the foot flat on the floorbend forward from the hips, and support yourself by placing the left hand on the bench your upper body should be parallel to the floor and the head facing down. Bend the right arm and raise the elbow past the torso. Keeping the elbow in place, push the dumbbell back and up by extending the arm backwards. at full extension momentarily pause, then slowly return to the starting position."
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Advanced"){
            reps = userWorkout!.kickbacksRepsAdv!
            sets = userWorkout!.kickbacksSetsAdv!
            weight = userWorkout!.kickbacksWeight!
            ExerciseDescriptionTextView.text = "place the left knee on the bench, keep the right knee bent with the foot flat on the floorbend forward from the hips, and support yourself by placing the left hand on the bench your upper body should be parallel to the floor and the head facing down. Bend the right arm and raise the elbow past the torso. Keeping the elbow in place, push the dumbbell back and up by extending the arm backwards. at full extension momentarily pause, then slowly return to the starting position."
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Beginner"){
            reps = userWorkout!.preacherCurlsReps!
            sets = userWorkout!.preacherCurlsSets!
            weight = userWorkout!.preacherCurlsWeight!
            ExerciseDescriptionTextView.text = "Sit on the preacher bench and adjust the height so your armpits are just touching the top of the sloped section. Hold the weight using an underhand grip (palms facing up) with your arms extended and your upper arms resting on the bench. Curl the weight up, keeping your upper arms on the bench, until your forearms are vertical. Pause for a second at the top of the curl, then slowly lower the weight until your arms are fully extended once again."
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.preacherCurlsRepsInt!
            sets = userWorkout!.preacherCurlsSetsInt!
            weight = userWorkout!.preacherCurlsWeight!
            ExerciseDescriptionTextView.text = "Sit on the preacher bench and adjust the height so your armpits are just touching the top of the sloped section. Hold the weight using an underhand grip (palms facing up) with your arms extended and your upper arms resting on the bench. Curl the weight up, keeping your upper arms on the bench, until your forearms are vertical. Pause for a second at the top of the curl, then slowly lower the weight until your arms are fully extended once again."
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Advanced"){
            reps = userWorkout!.preacherCurlsRepsAdv!
            sets = userWorkout!.preacherCurlsSetsAdv!
            weight = userWorkout!.preacherCurlsWeight!
            ExerciseDescriptionTextView.text = "Sit on the preacher bench and adjust the height so your armpits are just touching the top of the sloped section. Hold the weight using an underhand grip (palms facing up) with your arms extended and your upper arms resting on the bench. Curl the weight up, keeping your upper arms on the bench, until your forearms are vertical. Pause for a second at the top of the curl, then slowly lower the weight until your arms are fully extended once again."
        }
            
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.arnoldPressReps!
            sets = userWorkout!.arnoldPressSets!
            weight = userWorkout!.arnoldPressWeight!
            ExerciseDescriptionTextView.text = "Arnold Dumbbell Press Instructions. Sit on an exercise bench with back support and hold two dumbbells in front of you at about upper chest level with your palms facing your body and your elbows bent. Tip: Your arms should be next to your torso."
        }
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.arnoldPressRepsInt!
            sets = userWorkout!.arnoldPressSetsInt!
            weight = userWorkout!.arnoldPressWeight!
            ExerciseDescriptionTextView.text = "Arnold Dumbbell Press Instructions. Sit on an exercise bench with back support and hold two dumbbells in front of you at about upper chest level with your palms facing your body and your elbows bent. Tip: Your arms should be next to your torso."
        }
            
        else if (exercise == "Arnold Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.arnoldPressRepsAdv!
            sets = userWorkout!.arnoldPressSetsAdv!
            weight = userWorkout!.arnoldPressWeight!
            ExerciseDescriptionTextView.text = "Arnold Dumbbell Press Instructions. Sit on an exercise bench with back support and hold two dumbbells in front of you at about upper chest level with your palms facing your body and your elbows bent. Tip: Your arms should be next to your torso."
        }
            
            
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.inclineBenchPressReps!
            sets = userWorkout!.inclineBenchPressSets!
            weight = userWorkout!.inclineBenchPressWeight!
            ExerciseDescriptionTextView.text = "Load the bar to an appropriate weight for your training. Lay on the bench with your feet flat on the ground, driving through to your hips. Your back should be arched, and your shoulder blades retracted. Take a medium grip. Remove the bar from the rack, holding the weight above your chest with your arms extended. This will be your starting position. Lower the bar to the sternum by flexing the elbows. Your lats should stay tight and elbows slightly drawn in. After touching your torso with the bar, extend the elbows to return the bar to the starting position."
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.inclineBenchPressRepsInt!
            sets = userWorkout!.inclineBenchPressSetsInt!
            weight = userWorkout!.inclineBenchPressWeight!
            ExerciseDescriptionTextView.text = "Load the bar to an appropriate weight for your training. Lay on the bench with your feet flat on the ground, driving through to your hips. Your back should be arched, and your shoulder blades retracted. Take a medium grip. Remove the bar from the rack, holding the weight above your chest with your arms extended. This will be your starting position. Lower the bar to the sternum by flexing the elbows. Your lats should stay tight and elbows slightly drawn in. After touching your torso with the bar, extend the elbows to return the bar to the starting position."
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.inclineBenchPressRepsAdv!
            sets = userWorkout!.inclineBenchPressSetsAdv!
            weight = userWorkout!.inclineBenchPressWeight!
            ExerciseDescriptionTextView.text = "Load the bar to an appropriate weight for your training. Lay on the bench with your feet flat on the ground, driving through to your hips. Your back should be arched, and your shoulder blades retracted. Take a medium grip. Remove the bar from the rack, holding the weight above your chest with your arms extended. This will be your starting position. Lower the bar to the sternum by flexing the elbows. Your lats should stay tight and elbows slightly drawn in. After touching your torso with the bar, extend the elbows to return the bar to the starting position."
        }
            
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Beginner"){
            reps = userWorkout!.uprightRowsReps!
            sets = userWorkout!.uprightRowsSets!
            weight = userWorkout!.uprightRowsWeight!
            ExerciseDescriptionTextView.text = "Grab a loaded barbell with an overhand grip, and hold the weight in front of your thighs with your palms facing your body. Keeping the weights as close to your body as possible, pull the barbell up towards your chest. Your elbows should remain flared out during the movement. When the barbell is at your chest level (and not your chin), pause for one to two seconds, and then lower the bar back to the starting position"
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Intermediate"){
            reps = userWorkout!.uprightRowsRepsInt!
            sets = userWorkout!.uprightRowsSetsInt!
            weight = userWorkout!.uprightRowsWeight!
             ExerciseDescriptionTextView.text = "Grab a loaded barbell with an overhand grip, and hold the weight in front of your thighs with your palms facing your body. Keeping the weights as close to your body as possible, pull the barbell up towards your chest. Your elbows should remain flared out during the movement. When the barbell is at your chest level (and not your chin), pause for one to two seconds, and then lower the bar back to the starting position"
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Advanced"){
            reps = userWorkout!.uprightRowsRepsAdv!
            sets = userWorkout!.uprightRowsSetsAdv!
            weight = userWorkout!.uprightRowsWeight!
             ExerciseDescriptionTextView.text = "Grab a loaded barbell with an overhand grip, and hold the weight in front of your thighs with your palms facing your body. Keeping the weights as close to your body as possible, pull the barbell up towards your chest. Your elbows should remain flared out during the movement. When the barbell is at your chest level (and not your chin), pause for one to two seconds, and then lower the bar back to the starting position"
        }
            
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Beginner"){
            reps = userWorkout!.sideLateralRaiseReps!
            sets = userWorkout!.sideLateralRaiseSets!
            weight = userWorkout!.sideLateralRaiseWeight!
            ExerciseDescriptionTextView.text = "Standing in a shoulder-width stance, grab a pair of dumbbells with palms facing inward and let them hang at your sides. Raise your arms out to the sides until they're at shoulder level. Pause, then lower the weights back to the starting position."
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Intermediate"){
            reps = userWorkout!.sideLateralRaiseRepsInt!
            sets = userWorkout!.sideLateralRaiseSetsInt!
            weight = userWorkout!.sideLateralRaiseWeight!
            ExerciseDescriptionTextView.text = "Standing in a shoulder-width stance, grab a pair of dumbbells with palms facing inward and let them hang at your sides. Raise your arms out to the sides until they're at shoulder level. Pause, then lower the weights back to the starting position."
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Advanced"){
            reps = userWorkout!.sideLateralRaiseRepsAdv!
            sets = userWorkout!.sideLateralRaiseSetsAdv!
            weight = userWorkout!.sideLateralRaiseWeight!
            ExerciseDescriptionTextView.text = "Standing in a shoulder-width stance, grab a pair of dumbbells with palms facing inward and let them hang at your sides. Raise your arms out to the sides until they're at shoulder level. Pause, then lower the weights back to the starting position."
            
        }
            
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Beginner"){
            
            sets = userWorkout!.forearmTwistsSets!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            ExerciseDescriptionTextView.text = "Rest the whole weight of your lower arm on the bench. Relax your shoulders and rotate the dumb-bell outwards. Keep your hand in line with your forearm. Rotate the dumb-bell inwards to complete the rep."
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Intermediate"){
            
            sets = userWorkout!.forearmTwistsSetsInt!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            ExerciseDescriptionTextView.text = "Rest the whole weight of your lower arm on the bench. Relax your shoulders and rotate the dumb-bell outwards. Keep your hand in line with your forearm. Rotate the dumb-bell inwards to complete the rep."
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Advanced"){
            
            sets = userWorkout!.forearmTwistsSetsAdv!
            weight = userWorkout!.forearmTwistsWeight!
            RepsTextField.isHidden = true
            RepsLabel.isHidden = true
            ExerciseDescriptionTextView.text = "Rest the whole weight of your lower arm on the bench. Relax your shoulders and rotate the dumb-bell outwards. Keep your hand in line with your forearm. Rotate the dumb-bell inwards to complete the rep."
        }
          
        else if (exercise == "Military Press" && workoutLevel == "Beginner"){
            reps = userWorkout!.militaryPressReps!
            sets = userWorkout!.militaryPressSets!
            weight = userWorkout!.militaryPressWeight!
            ExerciseDescriptionTextView.text = "Start by placing a barbell that is about chest high on a squat rack. Once you have selected the weights, grab the barbell using a pronated (palms facing forward) grip. Make sure to grip the bar wider than shoulder width apart from each other."
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Intermediate"){
            reps = userWorkout!.militaryPressRepsInt!
            sets = userWorkout!.militaryPressSetsInt!
            weight = userWorkout!.militaryPressWeight!
            ExerciseDescriptionTextView.text = "Start by placing a barbell that is about chest high on a squat rack. Once you have selected the weights, grab the barbell using a pronated (palms facing forward) grip. Make sure to grip the bar wider than shoulder width apart from each other."
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Advanced"){
            reps = userWorkout!.militaryPressRepsAdv!
            sets = userWorkout!.militaryPressSetsAdv!
            weight = userWorkout!.militaryPressWeight!
            ExerciseDescriptionTextView.text = "Start by placing a barbell that is about chest high on a squat rack. Once you have selected the weights, grab the barbell using a pronated (palms facing forward) grip. Make sure to grip the bar wider than shoulder width apart from each other."
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Beginner"){
            reps = userWorkout!.pullupsReps!
            sets = userWorkout!.pullupsSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Hang from a bar with a pronated (palms facing away) grip. Place your hands about shoulder-width apart. Pull up and raise your body until your chin reaches the same height as the bar. Avoid swinging or kipping as you pull. Lower yourself back to the starting position."
            
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Intermediate"){
            reps = userWorkout!.pullupsRepsInt!
            sets = userWorkout!.pullupsSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Hang from a bar with a pronated (palms facing away) grip. Place your hands about shoulder-width apart. Pull up and raise your body until your chin reaches the same height as the bar. Avoid swinging or kipping as you pull. Lower yourself back to the starting position."
            
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Advanced"){
            reps = userWorkout!.pullupsRepsAdv!
            sets = userWorkout!.pullupsSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Hang from a bar with a pronated (palms facing away) grip. Place your hands about shoulder-width apart. Pull up and raise your body until your chin reaches the same height as the bar. Avoid swinging or kipping as you pull. Lower yourself back to the starting position."
            
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Beginner"){
            reps = userWorkout!.weightedDipsReps!
            sets = userWorkout!.weightedDipsSets!
            weight = userWorkout!.weightedDipsWeight!
            ExerciseDescriptionTextView.text = "Grab the parallel bars and jump up, straighten your arms Lower your body by bending your arms while leaning forward. Dip down until your shoulders are below your elbows. Lift your body up by straightening your arms. Lock your elbows at the top"
            
            
            
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Intermediate"){
            reps = userWorkout!.weightedDipsRepsInt!
            sets = userWorkout!.weightedDipsSetsInt!
            weight = userWorkout!.weightedDipsWeight!
            ExerciseDescriptionTextView.text = "Grab the parallel bars and jump up, straighten your arms Lower your body by bending your arms while leaning forward. Dip down until your shoulders are below your elbows. Lift your body up by straightening your arms. Lock your elbows at the top"
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Advanced"){
            reps = userWorkout!.weightedDipsRepsAdv!
            sets = userWorkout!.weightedDipsSetsAdv!
            weight = userWorkout!.weightedDipsWeight!
            ExerciseDescriptionTextView.text = "Grab the parallel bars and jump up, straighten your arms Lower your body by bending your arms while leaning forward. Dip down until your shoulders are below your elbows. Lift your body up by straightening your arms. Lock your elbows at the top"
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Beginner"){
            reps = userWorkout!.legRaiseReps!
            sets = userWorkout!.legRaiseSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Lay down with your hands to your sides for support. Raise your legs so they are off the ground, keeping the abdominals tight. Slowly raise your legs 90 degrees, contracting the abdominal muscles. Slowly return to starting position. Do not touch the floor with your feet."
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Intermediate"){
            reps = userWorkout!.legRaiseRepsInt!
            sets = userWorkout!.legRaiseSetsInt!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Lay down with your hands to your sides for support. Raise your legs so they are off the ground, keeping the abdominals tight. Slowly raise your legs 90 degrees, contracting the abdominal muscles. Slowly return to starting position. Do not touch the floor with your feet."
            
        }
            
            
        else if (exercise == "Leg Raise" && workoutLevel == "Advanced"){
            reps = userWorkout!.legRaiseRepsAdv!
            sets = userWorkout!.legRaiseSetsAdv!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Lay down with your hands to your sides for support. Raise your legs so they are off the ground, keeping the abdominals tight. Slowly raise your legs 90 degrees, contracting the abdominal muscles. Slowly return to starting position. Do not touch the floor with your feet."
            
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Beginner"){
            reps = userWorkout!.shrugReps!
            sets = userWorkout!.shrugSets!
            weight = userWorkout!.shrugWeight!
            ExerciseDescriptionTextView.text = "Stand with your knees slightly bent. Grasp the barbell shoulder width, be sure to get a firm grip with palms facing in. You may use wrist straps to relieve forearm strain if you use a heavy weight. Now, raise the barbell from its support and raise your shoulders as high as you can keeping your arms close to your sides without bending at your elbow. Release back down to the starting position."
        }
            
            
        else if (exercise == "Shrugs" && workoutLevel == "Intermediate"){
            reps = userWorkout!.shrugRepsInt!
            sets = userWorkout!.shrugSetsInt!
            weight = userWorkout!.shrugWeight!
            ExerciseDescriptionTextView.text = "Stand with your knees slightly bent. Grasp the barbell shoulder width, be sure to get a firm grip with palms facing in. You may use wrist straps to relieve forearm strain if you use a heavy weight. Now, raise the barbell from its support and raise your shoulders as high as you can keeping your arms close to your sides without bending at your elbow. Release back down to the starting position."
        }
            
            
        else if (exercise == "Shrugs" && workoutLevel == "Advanced"){
            reps = userWorkout!.shrugRepsAdv!
            sets = userWorkout!.shrugSetsAdv!
            weight = userWorkout!.shrugWeight!
            ExerciseDescriptionTextView.text = "Stand with your knees slightly bent. Grasp the barbell shoulder width, be sure to get a firm grip with palms facing in. You may use wrist straps to relieve forearm strain if you use a heavy weight. Now, raise the barbell from its support and raise your shoulders as high as you can keeping your arms close to your sides without bending at your elbow. Release back down to the starting position."
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Beginner"){
            reps = userWorkout!.latPullReps!
            sets = userWorkout!.latPullSets!
            weight = userWorkout!.latPullWeight!
            ExerciseDescriptionTextView.text = "Pull the bar down until it's approximately level with the chin. Exhale on down motion. Keep your feet flat on the floor and engage your abs as you pull. The bottom of the motion should be where your elbows can't move downward any more without moving backward. From the bottom position with the bar close to your chin, slowly return the bar to the starting position"
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Intermediate"){
            reps = userWorkout!.latPullRepsInt!
            sets = userWorkout!.latPullSetsInt!
            weight = userWorkout!.latPullWeight!
            ExerciseDescriptionTextView.text = "Pull the bar down until it's approximately level with the chin. Exhale on down motion. Keep your feet flat on the floor and engage your abs as you pull. The bottom of the motion should be where your elbows can't move downward any more without moving backward. From the bottom position with the bar close to your chin, slowly return the bar to the starting position"
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Advanced"){
            reps = userWorkout!.latPullRepsAdv!
            sets = userWorkout!.latPullSetsAdv!
            weight = userWorkout!.latPullWeight!
            ExerciseDescriptionTextView.text = "Pull the bar down until it's approximately level with the chin. Exhale on down motion. Keep your feet flat on the floor and engage your abs as you pull. The bottom of the motion should be where your elbows can't move downward any more without moving backward. From the bottom position with the bar close to your chin, slowly return the bar to the starting position"
        }
            
        
            
        else if (exercise == "Dips"){
            reps = userWorkout!.dipsReps!
            sets = userWorkout!.dipsSets!
            WeightLabel.isHidden = true
            weightTextField.isHidden = true
            ExerciseDescriptionTextView.text = "Position your hands shoulder-width apart on a secured bench or stable chair. Slide your butt off the front of the bench with your legs extended out in front of you. Straighten your arms, keeping a little bend in your elbows to keep tension on your triceps and off your elbow joints."
            
        }
        
        
        
        
        
        // Displays the information in the view
        ExerciseLabel.text = exercise
        RepsTextField.text = "\(reps)"
        SetsTextField.text = "\(sets)"
        weightTextField.text = "\(weight)"
        
        //self.ExerciseDescriptionTextView.layer.borderColor = UIColor.black.cgColor
        //self.ExerciseDescriptionTextView.layer.borderWidth = 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
      
        
        
        
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
                globalHistory.append(thisLift)
                
                
                let userHistory = WorkoutHistory()
                userHistory.history = globalHistory
                
                for i in 0..<userHistory.history.count{
                    print("In our workout history this is workout number \(i + 1)")
                    print("Today's date is: \(userHistory.history[i].date!)")
                    print("The Exercise is: \(userHistory.history[i].exercise!)")
                    print("The Sets are: \(userHistory.history[i].sets!)")
                    print("The Reps are: \(userHistory.history[i].reps!)")
                    print("The Weight is: \(userHistory.history[i].weight!)")
                }
                
                let destinationVC = segue.destination as! WorkoutDisplayViewController
                destinationVC.sportName = sportName
                destinationVC.positionName = positionName
                destinationVC.localHistory = history
                destinationVC.lift = thisLift
                destinationVC.thisExercise = exercise
                destinationVC.globalHistory = globalHistory
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
