//
//  WorkoutDisplayViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class WorkoutDisplayViewController: UIViewController {
    
    
    var userWorkout: SetsAndRepsCount?
    var sportName: String?
    var positionName: String?
    var workoutType = "legDay"
    var workoutLevel = "Beginner"
    
    
    
    @IBOutlet weak var sportLabel: UILabel!
    
    
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    let basketballCenter = ["legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Vertical Leaps", "Step-Ups", "Walking Lunges", "Calf Raises","Stationary Bike", "Full Court Lunges", "One Legged Squats", "Hamstring Curls", "Deep Side Lunges", "Dumbbell Step-Ups"],"upper": ["Bench Press", "Overhead Press", "Dubmbell Press", "Pullups", "Tricep Extensions", "Bicep Curls", "Planks", "Kickbacks", "Military Press", "Air Bicycle", "Six Inches", "Preacher Curls", "Upright Rows", "Dips"], "agility": ["5-10-5", "Stagger Sprints",  "Make Free Throws", "Box Jumps", "Weak Handed Layups", "Dream Shake Drill", "Lateral Shuffle", "Lateral Crossovers", "Spot Shooting", "Mikan Drill", "High Knees Run", "Tip Drill", "Drop Step Slides", "3 Point Shooting"]]
    
    let basketballPG = ["legDay": [ "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Step-Ups", "Hamstring Curls", "Calf Raises", "Reverse Lunges", "One Legged Squats", "Deep Side Lunges", "Split Squat", "Squat Into Jump Tuck" ],"upper": ["Bench Press", "Overhead Press", "Dubmbell Press", "Tricep Extensions", "Planks", "Bicep Curls", "Arnold Press", "Inclined Bench Press", "Six Inches", "Preacher Curls", "Military Press", "Side Lateral Raise", "Forearm Twists", "Dips"], "agility": ["5-10-5", "Make Free Throws", "Stagger Sprints", "Box Jumps", "Sicssor Dribble",  "Vertical Leaps", "Standing Long Jumps", "Weak Handed Layups", "Dribble With Weak Hand", "Reggie Miller Step Back Drill", "Jordan's Turn And Fade Away Drill", "Lateral Shuffle", "Lateral Crossovers", "Spider Dribble"]]
    
    let basketballSG = ["legDay": [ "Leg Press", "Squat", "Hang Clean", "Deadlift", "Hamstring Curls", "One Legged Squats", "Lunges", "Box Jumps"],"upper": ["Bench Press", "Overhead Press", "Dubmbell Press" ], "agility": ["5-10-5", "Spot Shooting Drill", "Stagger Sprints", "Reggie Miller Step Back Drill", "Weak Handed layups", "3 Point Shooting", "Vertical Leaps", "Spot Shooting", "Box Jumps", "Reverse Layups", "Make Free Throws", "Lateral Shuffle", "Lateral Crossovers", "Jordan's Turn And Fade Away Drill" ]]
    
    let basketballForward = ["legDay": [ "Leg Press", "Squat", "Hang Clean", "Deadlift", "Stagger Sprints", "Lunges", "Dumbbell Step-Ups"],"upper": ["Bench Press", "Overhead Press", "Dubmbell Press" ], "agility": ["5-10-5", "Box Jumps"]]
    
    var selectedWorkout = ["legDay": ["","","","","","","","","","","","","",""], "upper": ["","","","","","","","","","","","","",""], "agility": ["","","","","","","","","","","","","",""]]
    
    var workouts = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        userWorkout = sharedData.getUserWorkoutData()
        
        
        // Do any additional setup after loading the view.
        
        self.sportLabel.text = "\(sportName!): "
        self.positionLabel.text = positionName
        
        // Large if else block will check which sport and position has been selected and will load that workout into the into the array of the selected workout
        // Later we will display whichever workout has been selected
        if (sportName == "Basketball" && positionName == "Center"){
            
            for i in 0..<basketballCenter["legDay"]!.count{
                selectedWorkout["legDay"]![i] = basketballCenter["legDay"]![i]
            }
            
            for i in 0..<basketballCenter["upper"]!.count{
                selectedWorkout["upper"]![i] = basketballCenter["upper"]![i]
            }
            
            for i in 0..<basketballCenter["agility"]!.count{
                selectedWorkout["agility"]![i] = basketballCenter["agility"]![i]
            }
        }
        
        else if (sportName == "Basketball" && positionName == "Point Guard"){
            for i in 0..<basketballPG["legDay"]!.count{
                selectedWorkout["legDay"]![i] = basketballPG["legDay"]![i]
            }
            
            for i in 0..<basketballPG["upper"]!.count{
                selectedWorkout["upper"]![i] = basketballPG["upper"]![i]
            }
            
            for i in 0..<basketballPG["agility"]!.count{
                selectedWorkout["agility"]![i] = basketballPG["agility"]![i]
            }
        }
            
        else if (sportName == "Basketball" && positionName == "Shooting Guard"){
            for i in 0..<basketballSG["legDay"]!.count{
                selectedWorkout["legDay"]![i] = basketballSG["legDay"]![i]
            }
            
            for i in 0..<basketballSG["upper"]!.count{
                selectedWorkout["upper"]![i] = basketballSG["upper"]![i]
            }
            
            for i in 0..<basketballSG["agility"]!.count{
                selectedWorkout["agility"]![i] = basketballSG["agility"]![i]
            }
        }
            
        else if (sportName == "Basketball" && positionName == "Forward"){
            for i in 0..<basketballForward["legDay"]!.count{
                selectedWorkout["legDay"]![i] = basketballForward["legDay"]![i]
            }
            
            for i in 0..<basketballForward["upper"]!.count{
                selectedWorkout["upper"]![i] = basketballForward["upper"]![i]
            }
            
            for i in 0..<basketballForward["agility"]!.count{
                selectedWorkout["agility"]![i] = basketballForward["agility"]![i]
            }
        }
            
        
            
            
        else {}
        workouts.append(contentsOf: selectedWorkout.keys)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToLiftDescription"{
            
           let indexPath = self.tableView.indexPathForSelectedRow
           let position = selectedWorkout[workoutType]![indexPath!.row]
           let destinationVC = segue.destination as! ExerciseDescriptionViewController
            
          
            
           destinationVC.exercise = position
           destinationVC.sportName = sportName
           destinationVC.positionName = positionName
        }
    }
    
    @IBAction func myUnwindFunction(unwindSegue: UIStoryboardSegue){
        print("Stuff")
        tableView.reloadData()
    }
    

    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        // control for the workout type selection
        if sender.selectedSegmentIndex == 0{
            workoutType = "legDay"
        }
        else if sender.selectedSegmentIndex == 1{
            workoutType = "upper"
        }
        else if sender.selectedSegmentIndex == 2{
            workoutType = "agility"
        }
        tableView.reloadData()
        
    }
    
    @IBAction func levelSegmentedControl(_ sender: UISegmentedControl) {
        //control for the workout level selection
        if sender.selectedSegmentIndex == 0{
            workoutLevel = "Beginner"
        }
        else if sender.selectedSegmentIndex == 1{
            workoutLevel = "Intermediate"
        }
        else if sender.selectedSegmentIndex == 2{
            workoutLevel = "Advanced"
        }
        tableView.reloadData()
    }
    
}

extension WorkoutDisplayViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numberOfRows = 1
        // if else statement checks the type of workout and the level you want to
        // train at, shows the amount of rows in the table relevent to the level
        if workoutType == "legDay"{
            if workoutLevel == "Beginner"{
                numberOfRows = (selectedWorkout["legDay"]?.count)! - 8
            }
            
            else if workoutLevel == "Intermediate"{
                numberOfRows = (selectedWorkout["legDay"]?.count)! - 4
            }
            
            else if workoutLevel == "Advanced"{
                numberOfRows = (selectedWorkout["legDay"]?.count)!
            }
            
        }
        
        else if workoutType == "upper"{
            if workoutLevel == "Beginner"{
                numberOfRows = (selectedWorkout["upper"]?.count)! - 8
            }
                
            else if workoutLevel == "Intermediate"{
                numberOfRows = (selectedWorkout["upper"]?.count)! - 4
            }
                
            else if workoutLevel == "Advanced"{
                numberOfRows = (selectedWorkout["upper"]?.count)!
            }
        }
            
        else if workoutType == "agility"{
            if workoutLevel == "Beginner"{
                numberOfRows = (selectedWorkout["agility"]?.count)! - 8
            }
                
            else if workoutLevel == "Intermediate"{
                numberOfRows = (selectedWorkout["agility"]?.count)! - 4
            }
                
            else if workoutLevel == "Advanced"{
                numberOfRows = (selectedWorkout["agility"]?.count)!
            }
            
        }
        
        // sets number of rows in the table view
        return numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        var exercise = "default"
        var sets = 0
        var reps = 0
        var description = "default"
        var time = 0
        var height = 0
        let setsAndRepsLabel = cell.viewWithTag(200) as! UILabel
       
        
        // block of if else statements that controls which exercise set will be displayed
        if workoutType == "legDay"{
            
            let exercisesInWorkout = selectedWorkout["legDay"]
           
            exercise = exercisesInWorkout![indexPath.row]
            
            
            cell.textLabel?.text = exercise
        }
            
        else if workoutType == "upper"{
            
            let exercisesInWorkout = selectedWorkout["upper"]
            
            exercise = exercisesInWorkout![indexPath.row]
            
            
            cell.textLabel?.text = exercise
            
        }
        
        else if workoutType == "agility"{
            
            let exercisesInWorkout = selectedWorkout["agility"]
            
            exercise = exercisesInWorkout![indexPath.row]
            
            
            cell.textLabel?.text = exercise
            
            
        }
        
     
        
        if (exercise == "Squat" && workoutLevel == "Beginner"){
            if userWorkout?.squatSets == 0{
                userWorkout?.squatSets = 3
                userWorkout?.squatReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.squatSets!) x \(userWorkout!.squatReps!))"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Intermediate"){
            if userWorkout!.squatSetsInt == 0{
            userWorkout?.squatSetsInt = 3
            userWorkout?.squatRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.squatSetsInt!) x \(userWorkout!.squatRepsInt!))"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        
        else if (exercise == "Deadlift" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Deadlift" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Deadlift" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Stretch" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = ""
        }
            
        else if (exercise == "Stretch" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = ""
        }
            
        else if (exercise == "Stretch" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = ""
        }
        
        else if (exercise == "Leg Press" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Hang Clean" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Walking Lunges" && workoutLevel == "Beginner"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps) Yards)"
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 20
            setsAndRepsLabel.text = "(\(sets) x \(reps) Yards)"
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Advanced"){
            sets = 3
            reps = 30
            setsAndRepsLabel.text = "(\(sets) x \(reps) Yards)"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Advanced"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Vertical Leaps" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = "(5 Times)"
        }
            
        else if (exercise == "Vertical Leaps" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = "(5 Times)"
        }
            
        else if (exercise == "Vertical Leaps" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = "(5 Times)"
        }
        
        else if (exercise == "Calf Raises" && workoutLevel == "Beginner"){
            sets = 3
            reps = 15
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 25
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Advanced"){
            sets = 3
            reps = 35
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Beginner"){
            time = 5
            setsAndRepsLabel.text = "(\(time) Minutes)"
        }
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Intermediate"){
            time = 7
            setsAndRepsLabel.text = "(\(time) Minutes)"
        }
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Advanced"){
            time = 10
            setsAndRepsLabel.text = "(\(time) Minutes)"
        }
        
        else if (exercise == "Full Court Lunges" && workoutLevel == "Beginner"){
            reps = 1
            setsAndRepsLabel.text = "(\(reps) Time)"
        }
            
        else if (exercise == "Full Court Lunges" && workoutLevel == "Intermediate"){
            reps = 2
            setsAndRepsLabel.text = "(\(reps) Times)"
        }
            
        else if (exercise == "Full Court Lunges" && workoutLevel == "Advanced"){
            reps = 3
            setsAndRepsLabel.text = "(\(reps) Times)"
        }
        
        else if (exercise == "One Legged Squats" && workoutLevel == "Beginner"){
            sets = 3
            reps = 5
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 5
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Advanced"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Hamstring Curls" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Advanced"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "2 Mile Run" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = ""
        }
            
        else if (exercise == "2 Mile Run" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = ""
        }
            
        else if (exercise == "2 Mile Run" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = ""
        }
        
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Beginner"){
            sets = 3
            reps = 5
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Advanced"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Stagger Sprints" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = "(Half Court)"
        }
            
        else if (exercise == "Stagger Sprints" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = "(Full Court)"
        }
            
        else if (exercise == "Stagger Sprints" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = "(Full Court x2)"
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Advanced"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Advanced"){
            sets = 3
            reps = 15
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Bench Press" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Overhead Press" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Dubmbell Press" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Dubmbell Press" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Dubmbell Press" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
        
        else if (exercise == "Tricep Extensions" && workoutLevel == "Beginner"){
            sets = 3
            reps = 8
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Intermediate"){
            sets = 3
            reps = 10
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Advanced"){
            sets = 3
            reps = 6
            setsAndRepsLabel.text = "(\(sets) x \(reps))"
        }
            
        else if (exercise == "5-10-5"){
            setsAndRepsLabel.text = "(5 Times)"
        }
        
        else{setsAndRepsLabel.text = ""}
        
        
        return cell
    }
    
    
}

extension WorkoutDisplayViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(selectedWorkout[workoutType]![indexPath.row] + " is selected")
    }
}
