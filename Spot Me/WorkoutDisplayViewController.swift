//
//  WorkoutDisplayViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class WorkoutDisplayViewController: UIViewController {
    
    var lift: LiftObject?
    var userWorkout: WorkoutInfo?
    var sportName: String?
    var positionName: String?
    var workoutType = "legDay"
    var workoutLevel = "Beginner"
    
    var history = [LiftObject]()
    
    
    
    @IBOutlet weak var sportLabel: UILabel!
    
    
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    // Key value arrays which hold the exercises for each position
    
    let basketballCenter = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Vertical Leaps", "Step-Ups", "Walking Lunges", "Calf Raises", "Stationary Bike", "Full Court Lunges", "Hamstring Curls", "Split Squat", "Deep Side Lunges", "Dumbbell Step-Ups"],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Pullups", "Tricep Extensions", "Bicep Curls", "Planks", "Inclined Bench Press", "Military Press", "Air Bicycle", "Six Inches", "Preacher Curls", "Upright Rows", "Dips"],
                    "agility": ["5-10-5", "Stagger Sprints",  "Make Free Throws", "Box Jumps", "Weak Handed Layups", "Dream Shake Drill", "Lateral Shuffle", "Lateral Crossovers", "Spot Shooting", "Mikan Drill", "High Knees Run", "Tip Drill", "Drop Step Slides", "3 Point Shooting"]]
    
    let basketballPG = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Step-Ups", "Hamstring Curls", "Calf Raises", "Reverse Lunges", "One Legged Squats", "Deep Side Lunges", "Split Squat", "Stationary Bike" ],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Tricep Extensions", "Planks", "Bicep Curls", "Arnold Press", "Inclined Bench Press", "Six Inches", "Preacher Curls", "Military Press", "Side Lateral Raise", "Forearm Twists", "Dips"],
                    "agility": ["5-10-5", "Make Free Throws", "Stagger Sprints", "Box Jumps", "Sicssor Dribble",  "Vertical Leaps", "Standing Long Jumps", "Weak Handed Layups", "Dribble With Weak Hand", "Reggie Miller Step Back Drill", "Jordan's Turn And Fade Away Drill", "Lateral Shuffle", "Lateral Crossovers", "Spider Dribble"]]
    
    let basketballSG = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Hamstring Curls", "One Legged Squats", "Lunges", "Calf Raises", "Split Squat", "Full Court Lunges", "One Legged Squats", "Dumbbell Step-Ups", "Stationary Bike"],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Tricep Extensions", "Six Inches", "Bicep Curls", "Inclined Bench Press", "Kickbacks", "Planks", "Preacher Curls", "Forearm Twists", "Military Press", "Arnold Press", "Dips"],
                    "agility": ["5-10-5", "Spot Shooting Drill", "Stagger Sprints", "Reggie Miller Step Back Drill", "Weak Handed layups", "3 Point Shooting", "Vertical Leaps", "Spot Shooting", "Box Jumps", "Reverse Layups", "Make Free Throws", "Lateral Shuffle", "Lateral Crossovers", "Jordan's Turn And Fade Away Drill" ]]
    
    let basketballForward = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Stagger Sprints", "Lunges", "Dumbbell Step-Ups", "Hamstring Curls", "Full Court Lunges", "Reverse Lunges", "Split Squat", "Calf Raises", "Stationary Bike"],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Planks", "Bicep Curls", "Tricep Extensions", "Arnold Press", "Pullups", "Six Inches", "Inclined Bench Press", "Upright Rows", "Preacher Curls", "Military Press", "Forearm Twists"],
                    "agility": ["5-10-5", "Box Jumps", "Make Free Throws", "Vertical Leaps", "Spot Shooting", "Lateral Shuffle","Weak Handed Layups", "Lateral Crossovers", "Mikan Drill", "Drop Step Slides", "Dream Shake Drill", "High Knees Run", "Tip Drill", "3 Point Shooting"]]
    
    let baseballInfield = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Dumbbell Step-Ups", "Calf Raises", "Split Squat", "Hamstring Curls", "Dumbbell Step-Ups", "Stationary Bike", "Box Jumps", "Deep Side Lunges"],
                    "upper": ["Bench Press", "Tricep Extensions", "Bicep Curls", "Six Inches", "Overhead Press", "Dumbbell Press", "Forearm Twists", "Military Press", "Pullups", "Side Planks", "Preacher Curls", "Upright Rows", "Side Lateral Raise", "Inclined Bench Press"],
                    "agility": ["5-10-5", "Batting Practice", "Lateral Shuffle", "Lateral Crossovers", "Stagger Sprints", "High Knees Run", "Ladder Drill", "Triple Threat Drill", "Positioning Drill", "Stealing Second", "Box Jumps", "Weave The Cones", "Round The Bases", "Third to First"]]
    
    let baseballOutfield = [
                    "legDay": ["Stretch", "Calf Raises", "Squat", "Hang Clean", "Deadlift", "Leg Press", "Step-Ups", "Dumbbell Calf Raises", "Split Squat", "Stationary Bike", "Deep Side Lunges", "Lunges", "Dumbbell Step-Ups", "One Legged Squats"],
                    "upper": ["Bench Press", "Tricep Extensions", "Bicep Curls", "Six Inches", "Side Planks", "Military Press", "Dumbbell Press", "Upright Rows", "Lat Pulls", "Side Planks", "Preacher Curls", "Upright Rows", "Inclined Bench Press", "Dips" ],
                    "agility": ["5-10-5", "Batting Practice", "Lateral Shuffle", "Lateral Crossovers", "Stagger Sprints", "High Knees Run", "Hit The Cut-Off", "Catching Fly Balls", "Weave The Cones", "Box Jumps", "Throwing Home", "Stealing Second", "Round The Bases", "Power Hitting"]]
    
    let baseballPitcher = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Calf Raises", "Deadlift", "Hang Clean", "Lunges", "Box Jumps", "Dumbbell Step-Ups", "Dumbbell Calf Raises", "Stationary Bike", "Split Squat", "Deep Side Lunges", "One Legged Squats"],
                    "upper": ["Bench Press", "Tricep Extensions", "Bicep Curls", "Six Inches", "Overhead Press", "Upright Rows", "Forearm Twists", "Shrugs", "Planks", "Pullups", "Military Press", "Lat Pulls", "Dips", "Arnold Press"],
                    "agility": ["5-10-5", "Batting Practice"]]
    
    let baseballCatcher = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Calf Raises", "Walking Lunges", "Hamstring Curls", "Split Squat", "Deep Side Lunges", "Dumbbell Calf Raises", "One Legged Squats", "Dumbbell Step-Ups", "Stationary Bike"],
                    "upper": ["Bench Press", "Bicep Curls", "Six Inches", "Tricep Extensions", "Shrugs", "Arnold Press", "Dumbbell Press", "Overhead Press", "Lat Pulls", "Leg Raise", "Military Press", "Preacher Curls", "Planks", "Inclined Bench Press"],
                    "agility": ["5-10-5", "Batting Practice", "Lateral Shuffle", "Catching Fly Balls", "Lateral Crossovers", "Stagger Sprints", "Fast Hands Drill", "High Knees Run", "Back Up First", "Weave The Cones", "Box Jumps", "Picking Off Runners", "Get Behind It Drill", "Power Hitting"]]
    
    let footballQB = [
        "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Split Squat", "Dumbbell Step-Ups", "Dumbbell Calf Raises", "Hamstring Curls", "Lunges", "One Legged Squats", "Box Jumps", "Stationary Bike",],
        "upper": ["Bench Press", "Overhead Press", "Tricep Extensions", "Bicep Curls", "Pullups", "Six Inches", "Arnold Press", "Upright Rows", "Lat Pulls", "Planks", "Dumbbell Press", "Shrugs", "Forearm Twists", "Dips"],
        "agility": ["5-10-5" , "Stagger Sprints", "Lateral Shuffle", "Crossing Target", "Over The Shoulder", "Lateral Crossovers", "High Knees Run", "Through The Hoop", "Checkdown Drill", ]]
    
    let footballRB = [
        "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Hamstring Curls", "Dumbbell Step-Ups", "Dumbbell Calf Raises", "Split Squat", "Deep Side Lunges", "Walking Lunges", "Box Jumps", "One Legged Squats"],
        "upper": ["Bench Press", "Bicep Curls", "Tricep Extensions", "Six Inches", "Pullups", "Upright Rows", "Planks", "Forearm Twists", "Side Planks", "Arnold Press", "Dumbbell Press", "Shrugs", "Leg Raise", "Dips"],
        "agility": ["5-10-5", "Vertical Leaps", "Stagger Sprints", "Stop And Sprint", "High Knees Run", "Lateral Shuffle", "Weave The Cones", "Standing Long Jumps", "Juke Sprint Spint", "40 Yard Dash", "Rip And Grip", "Bag Run", "Bag Weave", "Jump Cut Drill"]]
    
    let footballWR = [
        "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Hamstring Curls", "Dumbbell Step-Ups", "Dumbbell Calf Raises", "Split Squat", "Deep Side Lunges", "Walking Lunges", "Box Jumps", "Stationary Bike"],
        "upper": [],
        "agility": ["5-10-5", "Vertical Leaps", "Stagger Sprints", "Stop And Sprint", "Over The Shoulder", "High Knees Run", "Lateral Shuffle", "Weave The Cones", "Standing Long Jumps", "Curl Drill", "Crossing Drill", ]]
    
    
    let footballTE = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let footballOL = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let footballFS = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let footballCB = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let footballLB = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let footballDL = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift"],
                    "upper": [],
                    "agility": ["5-10-5"]]
    
    let soccerStriker = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Lunges", "Stagger Sprints", "Calf Raises", "One Legged Squats", "Dumbbell Step-Ups", "Split Squat", "Reverse Lunges", "Dumbbell Calf Raises", "Deep Side Lunges"],
                    "upper": ["Bench Press", "Bicep Curls", "Tricep Extensions", "Overhead Press", "Dumbbell Press", "Leg Raise", "Dips", "Pullups", "Six Inches", "Military Press", "Lat Pulls", "Shrugs", "Planks", "Side Planks"],
                    "agility": ["5-10-5", "Weave The Cones", "Box Jumps", "Low In The Corner", "Penalty Shots", "Run", "Step Over Dribble", "Lateral Shuffle", "Lateral Crossovers", "Upper 90", "Corner Kicks", "Spin Dribble", "From Beyond The 18", "Running Dribble"]]
    
    let soccerMidfield = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Calf Raises", "Reverse Lunges", "Split Squat", "Dumbbell Step-Ups", "Walking Lunges", "Hamstring Curls", "One Legged Squats", "Deep Side Lunges", "Dumbbell Calf Raises"],
                    "upper": ["Dumbbell Press", "Bicep Curls", "Tricep Extensions", "Arnold Press", "Lat Pulls", "Six Inches", "Pullups", "Overhead Press", "Dips", "Leg Raise", "Military Press", "Inclined Bench Press", "Planks", "Side Planks"],
                    "agility": ["5-10-5", "Weave The Cones", "Box Jumps", "Settling The Ball", "Penalty Shots", "Run", "Step Over Dribble", "Lateral Shuffle", "Lateral Crossovers", "Crossing", "Corner Kicks", "Spin Dribble", "From Beyond The 18", "Running Dribble"]]
    
    let soccerDefense = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Calf Raises", "Reverse Lunges", "Split Squat", "Dumbbell Step-Ups", "Walking Lunges", "Dumbbell Calf Raises", "One Legged Squats", "Deep Side Lunges", "Dumbbell Calf Raises"],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Tricep Extensions", "Planks", "Bicep Curls", "Arnold Press", "Inclined Bench Press", "Six Inches", "Preacher Curls", "Military Press", "Side Lateral Raise", "Forearm Twists", "Side Planks"],
                    "agility": ["5-10-5", "Man in the Middle", "Box Jumps", "Weave the Cones", "Lateral Shuffle", "Stagger Sprints", "Lateral Crossovers", "Headers", "Crossing", "Settling the Ball", "Long Pass", "Standing Long Jumps", "Long Throw In", "From Beyond The 18"]]
    
    let soccerGoalie = [
                    "legDay": ["Stretch", "Leg Press", "Squat", "Hang Clean", "Deadlift", "Calf Raises", "Reverse Lunges", "Split Squat", "Dumbbell Step-Ups", "Walking Lunges", "Dumbbell Calf Raises", "One Legged Squats", "Deep Side Lunges", "Dumbbell Calf Raises"],
                    "upper": ["Bench Press", "Overhead Press", "Dumbbell Press", "Tricep Extensions", "Planks", "Bicep Curls", "Planks", "Inclined Bench Press", "Six Inches", "Preacher Curls", "Military Press", "Side Lateral Raise", "Forearm Twists", "Side Planks"],
                    "agility": ["5-10-5", "Vertical Leaps", "Box Jumps", "Punting", "Weave the Cones", "Lateral Shuffle", "Stagger Sprints", "Lateral Crossovers", "Fast Hands Drill", "Drop Kick", "Long Pass", "Standing Long Jumps", "Penalty Shots", "Stopping Penalty Shots"]]
    
    
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
            
        else if (sportName == "Baseball" && positionName == "Infield"){
            for i in 0..<baseballInfield["legDay"]!.count{
                selectedWorkout["legDay"]![i] = baseballInfield["legDay"]![i]
            }
            
            for i in 0..<baseballInfield["upper"]!.count{
                selectedWorkout["upper"]![i] = baseballInfield["upper"]![i]
            }
            
            for i in 0..<baseballInfield["agility"]!.count{
                selectedWorkout["agility"]![i] = baseballInfield["agility"]![i]
            }
        }
            
        else if (sportName == "Baseball" && positionName == "Outfield"){
            for i in 0..<baseballOutfield["legDay"]!.count{
                selectedWorkout["legDay"]![i] = baseballOutfield["legDay"]![i]
            }
            
            for i in 0..<baseballOutfield["upper"]!.count{
                selectedWorkout["upper"]![i] = baseballOutfield["upper"]![i]
            }
            
            for i in 0..<baseballOutfield["agility"]!.count{
                selectedWorkout["agility"]![i] = baseballOutfield["agility"]![i]
            }
        }
            
        else if (sportName == "Baseball" && positionName == "Catcher"){
            for i in 0..<baseballCatcher["legDay"]!.count{
                selectedWorkout["legDay"]![i] = baseballCatcher["legDay"]![i]
            }
            
            for i in 0..<baseballCatcher["upper"]!.count{
                selectedWorkout["upper"]![i] = baseballCatcher["upper"]![i]
            }
            
            for i in 0..<baseballCatcher["agility"]!.count{
                selectedWorkout["agility"]![i] = baseballCatcher["agility"]![i]
            }
        }
            
        else if (sportName == "Baseball" && positionName == "Pitcher"){
            for i in 0..<baseballPitcher["legDay"]!.count{
                selectedWorkout["legDay"]![i] = baseballPitcher["legDay"]![i]
            }
            
            for i in 0..<baseballPitcher["upper"]!.count{
                selectedWorkout["upper"]![i] = baseballPitcher["upper"]![i]
            }
            
            for i in 0..<baseballPitcher["agility"]!.count{
                selectedWorkout["agility"]![i] = baseballPitcher["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Quarterback"){
            for i in 0..<footballQB["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballQB["legDay"]![i]
            }
            
            for i in 0..<footballQB["upper"]!.count{
                selectedWorkout["upper"]![i] = footballQB["upper"]![i]
            }
            
            for i in 0..<footballQB["agility"]!.count{
                selectedWorkout["agility"]![i] = footballQB["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Running Back"){
            for i in 0..<footballRB["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballRB["legDay"]![i]
            }
            
            for i in 0..<footballRB["upper"]!.count{
                selectedWorkout["upper"]![i] = footballRB["upper"]![i]
            }
            
            for i in 0..<footballRB["agility"]!.count{
                selectedWorkout["agility"]![i] = footballRB["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Wide Reciever"){
            for i in 0..<footballWR["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballWR["legDay"]![i]
            }
            
            for i in 0..<footballWR["upper"]!.count{
                selectedWorkout["upper"]![i] = footballWR["upper"]![i]
            }
            
            for i in 0..<footballWR["agility"]!.count{
                selectedWorkout["agility"]![i] = footballWR["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Tight End"){
            for i in 0..<footballTE["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballTE["legDay"]![i]
            }
            
            for i in 0..<footballTE["upper"]!.count{
                selectedWorkout["upper"]![i] = footballTE["upper"]![i]
            }
            
            for i in 0..<footballTE["agility"]!.count{
                selectedWorkout["agility"]![i] = footballTE["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Offensive Line"){
            for i in 0..<footballOL["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballOL["legDay"]![i]
            }
            
            for i in 0..<footballOL["upper"]!.count{
                selectedWorkout["upper"]![i] = footballOL["upper"]![i]
            }
            
            for i in 0..<footballOL["agility"]!.count{
                selectedWorkout["agility"]![i] = footballOL["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Cornerback"){
            for i in 0..<footballCB["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballCB["legDay"]![i]
            }
            
            for i in 0..<footballCB["upper"]!.count{
                selectedWorkout["upper"]![i] = footballCB["upper"]![i]
            }
            
            for i in 0..<footballCB["agility"]!.count{
                selectedWorkout["agility"]![i] = footballCB["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Free Safety"){
            for i in 0..<footballFS["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballFS["legDay"]![i]
            }
            
            for i in 0..<footballFS["upper"]!.count{
                selectedWorkout["upper"]![i] = footballFS["upper"]![i]
            }
            
            for i in 0..<footballFS["agility"]!.count{
                selectedWorkout["agility"]![i] = footballFS["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Linebacker"){
            for i in 0..<footballLB["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballLB["legDay"]![i]
            }
            
            for i in 0..<footballLB["upper"]!.count{
                selectedWorkout["upper"]![i] = footballLB["upper"]![i]
            }
            
            for i in 0..<footballLB["agility"]!.count{
                selectedWorkout["agility"]![i] = footballLB["agility"]![i]
            }
        }
            
        else if (sportName == "Football" && positionName == "Defensive Line"){
            for i in 0..<footballDL["legDay"]!.count{
                selectedWorkout["legDay"]![i] = footballDL["legDay"]![i]
            }
            
            for i in 0..<footballDL["upper"]!.count{
                selectedWorkout["upper"]![i] = footballDL["upper"]![i]
            }
            
            for i in 0..<footballDL["agility"]!.count{
                selectedWorkout["agility"]![i] = footballDL["agility"]![i]
            }
        }
            
        else if (sportName == "Soccer" && positionName == "Striker"){
            for i in 0..<soccerStriker["legDay"]!.count{
                selectedWorkout["legDay"]![i] = soccerStriker["legDay"]![i]
            }
            
            for i in 0..<soccerStriker["upper"]!.count{
                selectedWorkout["upper"]![i] = soccerStriker["upper"]![i]
            }
            
            for i in 0..<soccerStriker["agility"]!.count{
                selectedWorkout["agility"]![i] = soccerStriker["agility"]![i]
            }
        }
            
        else if (sportName == "Soccer" && positionName == "Midfield"){
            for i in 0..<soccerMidfield["legDay"]!.count{
                selectedWorkout["legDay"]![i] = soccerMidfield["legDay"]![i]
            }
            
            for i in 0..<soccerMidfield["upper"]!.count{
                selectedWorkout["upper"]![i] = soccerMidfield["upper"]![i]
            }
            
            for i in 0..<soccerMidfield["agility"]!.count{
                selectedWorkout["agility"]![i] = soccerMidfield["agility"]![i]
            }
        }
            
        else if (sportName == "Soccer" && positionName == "Defense"){
            for i in 0..<soccerDefense["legDay"]!.count{
                selectedWorkout["legDay"]![i] = soccerDefense["legDay"]![i]
            }
            
            for i in 0..<soccerDefense["upper"]!.count{
                selectedWorkout["upper"]![i] = soccerDefense["upper"]![i]
            }
            
            for i in 0..<soccerDefense["agility"]!.count{
                selectedWorkout["agility"]![i] = soccerDefense["agility"]![i]
            }
        }
            
        else if (sportName == "Soccer" && positionName == "Goalie"){
            for i in 0..<soccerGoalie["legDay"]!.count{
                selectedWorkout["legDay"]![i] = soccerGoalie["legDay"]![i]
            }
            
            for i in 0..<soccerGoalie["upper"]!.count{
                selectedWorkout["upper"]![i] = soccerGoalie["upper"]![i]
            }
            
            for i in 0..<soccerGoalie["agility"]!.count{
                selectedWorkout["agility"]![i] = soccerGoalie["agility"]![i]
            }
        }
            
        else {}
        workouts.append(contentsOf: selectedWorkout.keys)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indexPath = self.tableView.indexPathForSelectedRow
        let position = selectedWorkout[workoutType]![indexPath!.row]
        
        
        
       // Passes data via a segue to the appropriate view
        
        if segue.identifier == "ToLiftDescription"{
            
           let destinationVC = segue.destination as! ExerciseDescriptionViewController
            
           destinationVC.exercise = position
           destinationVC.sportName = sportName
           destinationVC.positionName = positionName
           destinationVC.workoutLevel = workoutLevel
           destinationVC.history = history
          
        }
        
        if segue.identifier == "ToTimedExercisesDescription"{
           
           let destinationVC = segue.destination as! TimedExerciseDescriptionViewController
            
            destinationVC.exercise = position
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
            destinationVC.workoutLevel = workoutLevel
        }
        
        if segue.identifier == "ToJumpingExercisesDescription"{
            
            let destinationVC = segue.destination as! JumpingExerciseViewController
            
            destinationVC.exercise = position
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
            destinationVC.workoutLevel = workoutLevel
        }
        
        if segue.identifier == "ToGeneralExercisesDescription"{
            
            let destinationVC = segue.destination as! GeneralExerciseViewController
            
            destinationVC.exercise = position
            destinationVC.sportName = sportName
            destinationVC.positionName = positionName
            destinationVC.workoutLevel = workoutLevel
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
        var reps = 0
        
        let setsAndRepsLabel = cell.viewWithTag(200) as! UILabel
       
        
        // this block of if else statements that controls which exercise set will be displayed
        
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
        
        
        
        
        // This block of if else statements checks the exercise from the workout array and sets the default sets and reps if the sets is 0
        // This block also sets the value for the label that shows the sets and reps for each row
        
        if (exercise == "Squat" && workoutLevel == "Beginner"){
            if userWorkout!.squatSets == 0{
                userWorkout!.squatSets = 3
                userWorkout!.squatReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.squatSets!) x \(userWorkout!.squatReps!))"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Intermediate"){
            if userWorkout!.squatSetsInt == 0{
            userWorkout!.squatSetsInt = 3
            userWorkout!.squatRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.squatSetsInt!) x \(userWorkout!.squatRepsInt!))"
        }
        
        else if (exercise == "Squat" && workoutLevel == "Advanced"){
            if userWorkout!.squatSetsAdv == 0{
                userWorkout!.squatSetsAdv = 3
                userWorkout!.squatRepsAdv = 6
            }
            
            setsAndRepsLabel.text = "(\(userWorkout!.squatSetsAdv!) x \(userWorkout!.squatRepsAdv!))"
        }
            
        
        else if (exercise == "Deadlift" && workoutLevel == "Beginner"){
            if userWorkout!.deadliftSets == 0{
                userWorkout!.deadliftSets = 3
                userWorkout!.deadliftReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deadliftSets!) x \(userWorkout!.deadliftReps!))"
        }
            
        else if (exercise == "Deadlift" && workoutLevel == "Intermediate"){
            if userWorkout!.deadliftSetsInt == 0{
                userWorkout!.deadliftSetsInt = 3
                userWorkout!.deadliftRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deadliftSetsInt!) x \(userWorkout!.deadliftRepsInt!))"
        }
            
        else if (exercise == "Deadlift" && workoutLevel == "Advanced"){
            if userWorkout!.deadliftSetsAdv == 0{
                userWorkout!.deadliftSetsAdv = 3
                userWorkout!.deadliftRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deadliftSetsAdv!) x \(userWorkout!.deadliftRepsAdv!))"
        }
        
        else if (exercise == "Stretch" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = "(At least 5 Minutes)"
        }
            
        else if (exercise == "Stretch" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = "(At least 5 Minutes)"
        }
            
        else if (exercise == "Stretch" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = "(At least 5 Minutes)"
        }
        
        else if (exercise == "Leg Press" && workoutLevel == "Beginner"){
            if userWorkout!.legPressSets == 0{
                userWorkout!.legPressSets = 3
                userWorkout!.legPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legPressSets!) x \(userWorkout!.legPressReps!))"
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Intermediate"){
            if userWorkout!.legPressSetsInt == 0{
                userWorkout!.legPressSetsInt = 3
                userWorkout!.legPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legPressSetsInt!) x \(userWorkout!.legPressRepsInt!))"
        }
            
        else if (exercise == "Leg Press" && workoutLevel == "Advanced"){
            if userWorkout!.legPressSetsAdv == 0{
                userWorkout!.legPressSetsAdv = 3
                userWorkout!.legPressRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legPressSetsAdv!) x \(userWorkout!.legPressRepsAdv!))"
        }
        
        else if (exercise == "Hang Clean" && workoutLevel == "Beginner"){
            if userWorkout!.hangCleanSets == 0{
                userWorkout!.hangCleanSets = 3
                userWorkout!.hangCleanReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hangCleanSets!) x \(userWorkout!.hangCleanReps!))"
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Intermediate"){
            if userWorkout!.hangCleanSetsInt == 0{
                userWorkout!.hangCleanSetsInt = 3
                userWorkout!.hangCleanRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hangCleanSetsInt!) x \(userWorkout!.hangCleanRepsInt!))"
        }
            
        else if (exercise == "Hang Clean" && workoutLevel == "Advanced"){
            if userWorkout!.hangCleanSetsAdv == 0{
                userWorkout!.hangCleanSetsAdv = 3
                userWorkout!.hangCleanRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hangCleanSetsAdv!) x \(userWorkout!.hangCleanRepsAdv!))"
        }
        
        else if (exercise == "Walking Lunges" && workoutLevel == "Beginner"){
            if userWorkout!.walkingLungesSets == 0{
                userWorkout!.walkingLungesSets = 5
                userWorkout!.walkingLungesDistance = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.walkingLungesSets!) x \(userWorkout!.walkingLungesDistance!) yards)"
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Intermediate"){
            if userWorkout!.walkingLungesSetsInt == 0{
                userWorkout!.walkingLungesSetsInt = 5
                userWorkout!.walkingLungesDistanceInt = 20
            }
            setsAndRepsLabel.text = "(\(userWorkout!.walkingLungesSetsInt!) x \(userWorkout!.walkingLungesDistanceInt!) yards)"
        }
            
        else if (exercise == "Walking Lunges" && workoutLevel == "Advanced"){
            if userWorkout!.walkingLungesSetsAdv == 0{
                userWorkout!.walkingLungesSetsAdv = 3
                userWorkout!.walkingLungesDistanceAdv = 50
            }
            setsAndRepsLabel.text = "(\(userWorkout!.walkingLungesSetsAdv!) x \(userWorkout!.walkingLungesDistanceAdv!) yards)"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Beginner"){
            if userWorkout!.stepUpsSets == 0{
                userWorkout!.stepUpsSets = 3
                userWorkout!.stepUpsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSets!) x \(userWorkout!.stepUpsReps!))"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Intermediate"){
            if userWorkout!.stepUpsSetsInt == 0{
                userWorkout!.stepUpsSetsInt = 3
                userWorkout!.stepUpsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSetsInt!) x \(userWorkout!.stepUpsRepsInt!))"
        }
            
        else if (exercise == "Step-Ups" && workoutLevel == "Advanced"){
            if userWorkout!.stepUpsSetsAdv == 0{
                userWorkout!.stepUpsSetsAdv = 3
                userWorkout!.stepUpsRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSetsAdv!) x \(userWorkout!.stepUpsRepsAdv!))"
        }
            
        else if (exercise == "Dumbbell Step-Ups" && workoutLevel == "Beginner"){
            if userWorkout!.stepUpsSets == 0{
                userWorkout!.stepUpsSets = 3
                userWorkout!.stepUpsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSets!) x \(userWorkout!.stepUpsReps!))"
        }
            
        else if (exercise == "Dumbbell Step-Ups" && workoutLevel == "Intermediate"){
            if userWorkout!.stepUpsSetsInt == 0{
                userWorkout!.stepUpsSetsInt = 3
                userWorkout!.stepUpsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSetsInt!) x \(userWorkout!.stepUpsRepsInt!))"
        }
            
        else if (exercise == "Dumbbell Step-Ups" && workoutLevel == "Advanced"){
            if userWorkout!.stepUpsSetsAdv == 0{
                userWorkout!.stepUpsSetsAdv = 3
                userWorkout!.stepUpsRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stepUpsSetsAdv!) x \(userWorkout!.stepUpsRepsAdv!))"
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
            if userWorkout!.calfRaisesSets == 0{
                userWorkout!.calfRaisesSets = 3
                userWorkout!.calfRaisesReps = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.calfRaisesSets!) x \(userWorkout!.calfRaisesReps!))"
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Intermediate"){
            if userWorkout!.calfRaisesSetsInt == 0{
                userWorkout!.calfRaisesSetsInt = 3
                userWorkout!.calfRaisesRepsInt = 25
            }
            setsAndRepsLabel.text = "(\(userWorkout!.calfRaisesSetsInt!) x \(userWorkout!.calfRaisesRepsInt!))"
        }
            
        else if (exercise == "Calf Raises" && workoutLevel == "Advanced"){
            if userWorkout!.calfRaisesSets == 0{
                userWorkout!.calfRaisesSetsAdv = 3
                userWorkout!.calfRaisesRepsAdv = 40
            }
            setsAndRepsLabel.text = "(\(userWorkout!.calfRaisesSetsAdv!) x \(userWorkout!.calfRaisesRepsAdv!))"
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Beginner"){
            if userWorkout!.dumbbellCalfRaisesSets == 0{
                userWorkout!.dumbbellCalfRaisesSets = 3
                userWorkout!.dumbbellCalfRaisesReps = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellCalfRaisesSets!) x \(userWorkout!.dumbbellCalfRaisesReps!))"
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Intermediate"){
            if userWorkout!.dumbbellCalfRaisesSetsInt == 0{
                userWorkout!.dumbbellCalfRaisesSetsInt = 3
                userWorkout!.dumbbellCalfRaisesRepsInt = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellCalfRaisesSetsInt!) x \(userWorkout!.dumbbellCalfRaisesRepsInt!))"
        }
            
        else if (exercise == "Dumbbell Calf Raises" && workoutLevel == "Advanced"){
            if userWorkout!.dumbbellCalfRaisesSets == 0{
                userWorkout!.dumbbellCalfRaisesSetsAdv = 3
                userWorkout!.dumbbellCalfRaisesRepsAdv = 20
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellCalfRaisesSetsAdv!) x \(userWorkout!.dumbbellCalfRaisesRepsAdv!))"
        }
        
        else if (exercise == "Stationary Bike" && workoutLevel == "Beginner"){
            if userWorkout!.stationaryBikeTime == 0{
                userWorkout!.stationaryBikeTime = 300
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stationaryBikeTime!/60) Minutes)"
        }
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Intermediate"){
            if userWorkout!.stationaryBikeTime == 0{
                userWorkout!.stationaryBikeTimeInt = 600
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stationaryBikeTimeInt!/60) Minutes)"
        }
            
        else if (exercise == "Stationary Bike" && workoutLevel == "Advanced"){
            if userWorkout!.stationaryBikeTime == 0{
                userWorkout!.stationaryBikeTimeAdv = 900
            }
            setsAndRepsLabel.text = "(\(userWorkout!.stationaryBikeTimeAdv!/60) Minutes)"
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
            if userWorkout!.oneLegSquatSets == 0{
                userWorkout!.oneLegSquatSets = 3
                userWorkout!.oneLegSquatReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.oneLegSquatSets!) x \(userWorkout!.oneLegSquatReps!))"
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Intermediate"){
            if userWorkout!.oneLegSquatSetsInt == 0{
                userWorkout!.oneLegSquatSetsInt = 3
                userWorkout!.oneLegSquatRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.oneLegSquatSetsInt!) x \(userWorkout!.oneLegSquatRepsInt!))"
        }
            
        else if (exercise == "One Legged Squats" && workoutLevel == "Advanced"){
            if userWorkout!.oneLegSquatSetsAdv == 0{
                userWorkout!.oneLegSquatSetsAdv = 3
                userWorkout!.oneLegSquatRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.oneLegSquatSetsAdv!) x \(userWorkout!.oneLegSquatRepsAdv!))"
        }
        
        else if (exercise == "Hamstring Curls" && workoutLevel == "Beginner"){
            if userWorkout!.hamstringCurlsSets == 0{
                userWorkout!.hamstringCurlsSets = 3
                userWorkout!.hamstringCurlsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hamstringCurlsSets!) x \(userWorkout!.hamstringCurlsReps!))"
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Intermediate"){
            if userWorkout!.hamstringCurlsSetsInt == 0{
                userWorkout!.hamstringCurlsSetsInt = 3
                userWorkout!.hamstringCurlsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hamstringCurlsSetsInt!) x \(userWorkout!.hamstringCurlsRepsInt!))"
        }
            
        else if (exercise == "Hamstring Curls" && workoutLevel == "Advanced"){
            if userWorkout!.hamstringCurlsSetsAdv == 0{
                userWorkout!.hamstringCurlsSetsAdv = 3
                userWorkout!.hamstringCurlsRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.hamstringCurlsSetsAdv!) x \(userWorkout!.hamstringCurlsRepsAdv!))"
        }
        
        else if (exercise == "2 Mile Run" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = "(Easy Pace)"
        }
            
        else if (exercise == "2 Mile Run" && workoutLevel == "Intermediate"){
            
            setsAndRepsLabel.text = "(Medium Pace)"
        }
            
        else if (exercise == "2 Mile Run" && workoutLevel == "Advanced"){
            
            setsAndRepsLabel.text = "(Medium/Fast Pace)"
        }
        
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Beginner"){
            if userWorkout!.deepSideLungesSets == 0{
                userWorkout!.deepSideLungesSets = 3
                userWorkout!.deepSideLungesReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deepSideLungesSets!) x \(userWorkout!.deepSideLungesReps!))"
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Intermediate"){
            if userWorkout!.deepSideLungesSetsInt == 0{
                userWorkout!.deepSideLungesSetsInt = 3
                userWorkout!.deepSideLungesRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deepSideLungesSetsInt!) x \(userWorkout!.deepSideLungesRepsInt!))"
        }
            
        else if (exercise == "Deep Side Lunges" && workoutLevel == "Advanced"){
            if userWorkout!.deepSideLungesSetsAdv == 0{
                userWorkout!.deepSideLungesSetsAdv = 3
                userWorkout!.deepSideLungesRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.deepSideLungesSetsAdv!) x \(userWorkout!.deepSideLungesRepsAdv!))"
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
            if userWorkout!.lungesSets == 0{
                userWorkout!.lungesSets = 3
                userWorkout!.lungesReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.lungesSets!) x \(userWorkout!.lungesReps!))"
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Intermediate"){
            if userWorkout!.lungesSetsInt == 0{
                userWorkout!.lungesSetsInt = 3
                userWorkout!.lungesRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.lungesSetsInt!) x \(userWorkout!.lungesRepsInt!))"
        }
            
        else if (exercise == "Lunges" && workoutLevel == "Advanced"){
            if userWorkout!.lungesSetsAdv == 0{
                userWorkout!.lungesSetsAdv = 3
                userWorkout!.lungesRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.lungesSetsAdv!) x \(userWorkout!.lungesRepsAdv!))"
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Beginner"){
            if userWorkout!.reverseLungesSets == 0{
                userWorkout!.reverseLungesSets = 3
                userWorkout!.reverseLungesReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.reverseLungesSets!) x \(userWorkout!.reverseLungesReps!))"
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Intermediate"){
            if userWorkout!.reverseLungesSetsInt == 0{
                userWorkout!.reverseLungesSetsInt = 3
                userWorkout!.reverseLungesRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.reverseLungesSetsInt!) x \(userWorkout!.reverseLungesRepsInt!))"
        }
            
        else if (exercise == "Reverse Lunges" && workoutLevel == "Advanced"){
            if userWorkout!.reverseLungesSetsAdv == 0{
                userWorkout!.reverseLungesSetsAdv = 3
                userWorkout!.reverseLungesRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.reverseLungesSetsAdv!) x \(userWorkout!.reverseLungesRepsAdv!))"
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Beginner"){
            if userWorkout!.splitSquatSets == 0{
                userWorkout!.splitSquatSets = 3
                userWorkout!.splitSquatReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.splitSquatSets!) x \(userWorkout!.splitSquatReps!))"
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Intermediate"){
            if userWorkout!.splitSquatSetsInt == 0{
                userWorkout!.splitSquatSetsInt = 3
                userWorkout!.splitSquatRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.splitSquatSetsInt!) x \(userWorkout!.splitSquatRepsInt!))"
        }
            
        else if (exercise == "Split Squat" && workoutLevel == "Advanced"){
            if userWorkout!.splitSquatSetsAdv == 0{
                userWorkout!.splitSquatSetsAdv = 3
                userWorkout!.splitSquatRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.splitSquatSetsAdv!) x \(userWorkout!.splitSquatRepsAdv!))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Beginner"){
            if userWorkout!.boxJumpsSets == 0{
                userWorkout!.boxJumpsSets = 3
                userWorkout!.boxJumpsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.boxJumpsSets!) x \(userWorkout!.boxJumpsReps!))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Intermediate"){
            if userWorkout!.boxJumpsSetsInt == 0{
                userWorkout!.boxJumpsSetsInt = 3
                userWorkout!.boxJumpsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.boxJumpsSetsInt!) x \(userWorkout!.boxJumpsRepsInt!))"
        }
            
        else if (exercise == "Box Jumps" && workoutLevel == "Advanced"){
            if userWorkout!.boxJumpsSetsAdv == 0{
                userWorkout!.boxJumpsSetsAdv = 3
                userWorkout!.boxJumpsRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.boxJumpsSetsAdv!) x \(userWorkout!.boxJumpsRepsAdv!))"
        }
        
        else if (exercise == "Bench Press" && workoutLevel == "Beginner"){
            if userWorkout!.benchPressSets == 0{
                userWorkout!.benchPressSets = 3
                userWorkout!.benchPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.benchPressSets!) x \(userWorkout!.benchPressReps!))"
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Intermediate"){
            if userWorkout!.benchPressSetsInt == 0{
                userWorkout!.benchPressSetsInt = 3
                userWorkout!.benchPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.benchPressSetsInt!) x \(userWorkout!.benchPressRepsInt!))"
        }
            
        else if (exercise == "Bench Press" && workoutLevel == "Advanced"){
            if userWorkout!.benchPressSetsAdv == 0{
                userWorkout!.benchPressSetsAdv = 3
                userWorkout!.benchPressRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.benchPressSetsAdv!) x \(userWorkout!.benchPressRepsAdv!))"
        }
        
        else if (exercise == "Overhead Press" && workoutLevel == "Beginner"){
            if userWorkout!.overheadPressSets == 0{
                userWorkout!.overheadPressSets = 3
                userWorkout!.overheadPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.overheadPressSets!) x \(userWorkout!.overheadPressReps!))"
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Intermediate"){
            if userWorkout!.overheadPressSetsInt == 0{
                userWorkout!.overheadPressSetsInt = 3
                userWorkout!.overheadPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.overheadPressSetsInt!) x \(userWorkout!.overheadPressRepsInt!))"
        }
            
        else if (exercise == "Overhead Press" && workoutLevel == "Advanced"){
            if userWorkout!.overheadPressSetsAdv == 0{
                userWorkout!.overheadPressSetsAdv = 3
                userWorkout!.overheadPressRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.overheadPressSetsAdv!) x \(userWorkout!.overheadPressRepsAdv!))"
        }
        
        else if (exercise == "Dumbbell Press" && workoutLevel == "Beginner"){
            if userWorkout!.dumbbellPressSets == 0{
                userWorkout!.dumbbellPressSets = 3
                userWorkout!.dumbbellPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellPressSets!) x \(userWorkout!.dumbbellPressReps!))"
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Intermediate"){
            if userWorkout!.dumbbellPressSetsInt == 0{
                userWorkout!.dumbbellPressSetsInt = 3
                userWorkout!.dumbbellPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellPressSetsInt!) x \(userWorkout!.dumbbellPressRepsInt!))"
        }
            
        else if (exercise == "Dumbbell Press" && workoutLevel == "Advanced"){
            if userWorkout!.dumbbellPressSetsAdv == 0{
                userWorkout!.dumbbellPressSetsAdv = 3
                userWorkout!.dumbbellPressRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.dumbbellPressSetsAdv!) x \(userWorkout!.dumbbellPressRepsAdv!))"
        }
        
        else if (exercise == "Tricep Extensions" && workoutLevel == "Beginner"){
            if userWorkout!.tricepExtensionsSets == 0{
                userWorkout!.tricepExtensionsSets = 3
                userWorkout!.tricepExtensionsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.tricepExtensionsSets!) x \(userWorkout!.tricepExtensionsReps!))"
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Intermediate"){
            if userWorkout!.tricepExtensionsSetsInt == 0{
                userWorkout!.tricepExtensionsSetsInt = 3
                userWorkout!.tricepExtensionsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.tricepExtensionsSetsInt!) x \(userWorkout!.tricepExtensionsRepsInt!))"
        }
            
        else if (exercise == "Tricep Extensions" && workoutLevel == "Advanced"){
            if userWorkout!.tricepExtensionsSetsAdv == 0{
                userWorkout!.tricepExtensionsSetsAdv = 3
                userWorkout!.tricepExtensionsRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.tricepExtensionsSetsAdv!) x \(userWorkout!.tricepExtensionsRepsAdv!))"
        }
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Beginner"){
            if userWorkout!.bicepCurlsSets == 0{
                userWorkout!.bicepCurlsSets = 3
                userWorkout!.bicepCurlsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.bicepCurlsSets!) x \(userWorkout!.bicepCurlsReps!))"
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Intermediate"){
            if userWorkout!.bicepCurlsSetsInt == 0{
                userWorkout!.bicepCurlsSetsInt = 3
                userWorkout!.bicepCurlsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.bicepCurlsSetsInt!) x \(userWorkout!.bicepCurlsRepsInt!))"
        }
            
            
        else if (exercise == "Bicep Curls" && workoutLevel == "Advanced"){
            if userWorkout!.bicepCurlsSetsAdv == 0{
                userWorkout!.bicepCurlsSetsAdv = 3
                userWorkout!.bicepCurlsRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.bicepCurlsSetsAdv!) x \(userWorkout!.bicepCurlsRepsAdv!))"
        }
            
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Beginner"){
            if userWorkout!.kickbacksSets == 0{
                userWorkout!.kickbacksSets = 3
                userWorkout!.kickbacksReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.kickbacksSets!) x \(userWorkout!.kickbacksReps!))"
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Intermediate"){
            if userWorkout!.kickbacksSetsInt == 0{
                userWorkout!.kickbacksSetsInt = 3
                userWorkout!.kickbacksRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.kickbacksSetsInt!) x \(userWorkout!.kickbacksRepsInt!))"
        }
            
            
        else if (exercise == "Kickbacks" && workoutLevel == "Advanced"){
            if userWorkout!.kickbacksSetsAdv == 0{
                userWorkout!.kickbacksSetsAdv = 3
                userWorkout!.kickbacksRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.kickbacksSetsAdv!) x \(userWorkout!.kickbacksRepsAdv!))"
        }
            
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Beginner"){
            if userWorkout!.preacherCurlsSets == 0{
                userWorkout!.preacherCurlsSets = 3
                userWorkout!.preacherCurlsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.preacherCurlsSets!) x \(userWorkout!.preacherCurlsReps!))"
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Intermediate"){
            if userWorkout!.preacherCurlsSetsInt == 0{
                userWorkout!.preacherCurlsSetsInt = 3
                userWorkout!.preacherCurlsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.preacherCurlsSetsInt!) x \(userWorkout!.preacherCurlsRepsInt!))"
        }
            
            
        else if (exercise == "Preacher Curls" && workoutLevel == "Advanced"){
            if userWorkout!.preacherCurlsSetsAdv == 0{
                userWorkout!.preacherCurlsSetsAdv = 3
                userWorkout!.preacherCurlsRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.preacherCurlsSetsAdv!) x \(userWorkout!.preacherCurlsRepsAdv!))"
        }
            
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Beginner"){
            if userWorkout!.arnoldPressSets == 0{
                userWorkout!.arnoldPressSets = 3
                userWorkout!.arnoldPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.arnoldPressSets!) x \(userWorkout!.arnoldPressReps!))"
        }
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Intermediate"){
            if userWorkout!.arnoldPressSetsInt == 0{
                userWorkout!.arnoldPressSetsInt = 3
                userWorkout!.arnoldPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.arnoldPressSetsInt!) x \(userWorkout!.arnoldPressRepsInt!))"
        }
            
            
        else if (exercise == "Arnold Press" && workoutLevel == "Advanced"){
            if userWorkout!.arnoldPressSetsAdv == 0{
                userWorkout!.arnoldPressSetsAdv = 3
                userWorkout!.arnoldPressRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.arnoldPressSetsAdv!) x \(userWorkout!.arnoldPressRepsAdv!))"
        }
            
            
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Beginner"){
            if userWorkout!.inclineBenchPressSets == 0{
                userWorkout!.inclineBenchPressSets = 3
                userWorkout!.inclineBenchPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.inclineBenchPressSets!) x \(userWorkout!.inclineBenchPressReps!))"
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Intermediate"){
            if userWorkout!.inclineBenchPressSetsInt == 0{
                userWorkout!.inclineBenchPressSetsInt = 3
                userWorkout!.inclineBenchPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.inclineBenchPressSetsInt!) x \(userWorkout!.inclineBenchPressRepsInt!))"
        }
            
            
        else if (exercise == "Inclined Bench Press" && workoutLevel == "Advanced"){
            if userWorkout!.inclineBenchPressSetsAdv == 0{
                userWorkout!.inclineBenchPressSetsAdv = 3
                userWorkout!.inclineBenchPressRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.inclineBenchPressSetsAdv!) x \(userWorkout!.inclineBenchPressRepsAdv!))"
        }
            
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Beginner"){
            if userWorkout!.uprightRowsSets == 0{
                userWorkout!.uprightRowsSets = 3
                userWorkout!.uprightRowsReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.uprightRowsSets!) x \(userWorkout!.uprightRowsReps!))"
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Intermediate"){
            if userWorkout!.uprightRowsSetsInt == 0{
                userWorkout!.uprightRowsSetsInt = 3
                userWorkout!.uprightRowsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.uprightRowsSetsInt!) x \(userWorkout!.uprightRowsRepsInt!))"
        }
            
            
        else if (exercise == "Upright Rows" && workoutLevel == "Advanced"){
            if userWorkout!.uprightRowsSetsAdv == 0{
                userWorkout!.uprightRowsSetsAdv = 3
                userWorkout!.uprightRowsRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.uprightRowsSetsAdv!) x \(userWorkout!.uprightRowsRepsAdv!))"
        }
            
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Beginner"){
            if userWorkout!.sideLateralRaiseSets == 0{
                userWorkout!.sideLateralRaiseSets = 3
                userWorkout!.sideLateralRaiseReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sideLateralRaiseSets!) x \(userWorkout!.sideLateralRaiseReps!))"
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Intermediate"){
            if userWorkout!.sideLateralRaiseSetsInt == 0{
                userWorkout!.sideLateralRaiseSetsInt = 3
                userWorkout!.sideLateralRaiseRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sideLateralRaiseSetsInt!) x \(userWorkout!.sideLateralRaiseRepsInt!))"
        }
            
            
        else if (exercise == "Side Lateral Raise" && workoutLevel == "Advanced"){
            if userWorkout!.sideLateralRaiseSetsAdv == 0{
                userWorkout!.sideLateralRaiseSetsAdv = 3
                userWorkout!.sideLateralRaiseRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sideLateralRaiseSetsAdv!) x \(userWorkout!.sideLateralRaiseRepsAdv!))"
            
        }
            
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Beginner"){
            if userWorkout!.forearmTwistsSets == 0{
                userWorkout!.forearmTwistsSets = 2
                
            }
            setsAndRepsLabel.text = "(\(userWorkout!.forearmTwistsSets!) sets)"
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Intermediate"){
            if userWorkout!.forearmTwistsSetsInt == 0{
                userWorkout!.forearmTwistsSetsInt = 3
                
            }
            setsAndRepsLabel.text = "(\(userWorkout!.forearmTwistsSetsInt!) sets)"
        }
            
            
        else if (exercise == "Forearm Twists" && workoutLevel == "Advanced"){
            if userWorkout!.forearmTwistsSetsAdv == 0{
                userWorkout!.forearmTwistsSetsAdv = 4
                
            }
            setsAndRepsLabel.text = "(\(userWorkout!.forearmTwistsSetsAdv!) sets)"
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Beginner"){
            if userWorkout!.militaryPressSets == 0{
                userWorkout!.militaryPressSets = 3
                userWorkout!.militaryPressReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.militaryPressSets!) x \(userWorkout!.militaryPressReps!))"
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Intermediate"){
            if userWorkout!.militaryPressSets == 0{
                userWorkout!.militaryPressSetsInt = 3
                userWorkout!.militaryPressRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.militaryPressSetsInt!) x \(userWorkout!.militaryPressRepsInt!))"
        }
            
        else if (exercise == "Military Press" && workoutLevel == "Advanced"){
            if userWorkout!.militaryPressSets == 0{
                userWorkout!.militaryPressSetsAdv = 3
                userWorkout!.militaryPressRepsAdv = 6
            }
            setsAndRepsLabel.text = "(\(userWorkout!.militaryPressSetsAdv!) x \(userWorkout!.militaryPressRepsAdv!))"
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Beginner"){
            if userWorkout!.weightedDipsSets == 0{
                userWorkout!.weightedDipsSets = 3
                userWorkout!.weightedDipsReps = 5
            }
            setsAndRepsLabel.text = "(\(userWorkout!.weightedDipsSets!) x \(userWorkout!.weightedDipsReps!))"
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Intermediate"){
            if userWorkout!.weightedDipsSets == 0{
                userWorkout!.weightedDipsSetsInt = 3
                userWorkout!.weightedDipsRepsInt = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.weightedDipsSetsInt!) x \(userWorkout!.weightedDipsRepsInt!))"
        }
            
        else if (exercise == "Weighted Dips" && workoutLevel == "Advanced"){
            if userWorkout!.weightedDipsSets == 0{
                userWorkout!.weightedDipsSetsAdv = 3
                userWorkout!.weightedDipsRepsAdv = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.weightedDipsSetsAdv!) x \(userWorkout!.weightedDipsRepsAdv!))"
        }
            
        
            
        else if (exercise == "Pullups" && workoutLevel == "Beginner"){
            if userWorkout!.pullupsSets == 0{
                userWorkout!.pullupsSets = 3
                userWorkout!.pullupsReps = 5
            }
            setsAndRepsLabel.text = "(\(userWorkout!.pullupsSets!) x \(userWorkout!.pullupsReps!))"
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Intermediate"){
            if userWorkout!.pullupsSetsInt == 0{
                userWorkout!.pullupsSetsInt = 3
                userWorkout!.pullupsRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.pullupsSetsInt!) x \(userWorkout!.pullupsRepsInt!))"
        }
            
            
        else if (exercise == "Pullups" && workoutLevel == "Advanced"){
            if userWorkout!.pullupsSetsAdv == 0{
                userWorkout!.pullupsSetsAdv = 3
                userWorkout!.pullupsRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.pullupsSetsAdv!) x \(userWorkout!.pullupsRepsAdv!))"
        }
            
        else if (exercise == "Dips"){
            if userWorkout!.dipsReps == 0{
                userWorkout!.dipsSets = 1
                userWorkout!.dipsReps = 10
            }
            setsAndRepsLabel.text = "\(userWorkout!.dipsReps!) or until failure"
        }
            
            
            
        else if (exercise == "Six Inches" && workoutLevel == "Beginner"){
            if userWorkout!.sixInchesSets == 0{
                userWorkout!.sixInchesSets = 3
                userWorkout!.sixInchesTime = 30
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sixInchesSets!) x \(userWorkout!.sixInchesTime!) sec)"
        }
            
            
        else if (exercise == "Six Inches" && workoutLevel == "Intermediate"){
            if userWorkout!.sixInchesSetsInt == 0{
                userWorkout!.sixInchesSetsInt = 3
                userWorkout!.sixInchesTimeInt = 45
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sixInchesSetsInt!) x \(userWorkout!.sixInchesTimeInt!) sec)"
        }
            
            
        else if (exercise == "Six Inches" && workoutLevel == "Advanced"){
            if userWorkout!.sixInchesSetsAdv == 0{
                userWorkout!.sixInchesSetsAdv = 5
                userWorkout!.sixInchesTimeAdv = 60
            }
            setsAndRepsLabel.text = "(\(userWorkout!.sixInchesSetsAdv!) x \(userWorkout!.sixInchesTimeAdv!) sec)"
        }
            
            
            
        else if (exercise == "Planks" && workoutLevel == "Beginner"){
            if (userWorkout!.planksSets == 0 || userWorkout!.planksTime == 0) {
                userWorkout!.planksSets = 3
                userWorkout!.planksTime = 60
            }
            if userWorkout!.planksTime!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSets!) x \(userWorkout!.planksTime!/60):00 min)"
            }
            else{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSets!) x \(userWorkout!.planksTime!/60):\(userWorkout!.planksTime!%60) min)"
            }
        }
            
            
        else if (exercise == "Planks" && workoutLevel == "Intermediate"){
            if (userWorkout!.planksSetsInt == 0 || userWorkout!.planksTimeInt == 0) {
                userWorkout!.planksSetsInt = 3
                userWorkout!.planksTimeInt = 120
            }
            if userWorkout!.planksTimeInt!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSetsInt!) x \(userWorkout!.planksTimeInt!/60):00 min)"
            }
            else{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSetsInt!) x \(userWorkout!.planksTimeInt!/60):\(userWorkout!.planksTimeInt!%60) min)"
            }
        }
            
            
        else if (exercise == "Planks" && workoutLevel == "Advanced"){
            if (userWorkout!.planksSetsAdv == 0 || userWorkout!.planksTimeAdv == 0) {
                userWorkout!.planksSetsAdv = 5
                userWorkout!.planksTimeAdv = 120
            }
            
            if userWorkout!.planksTimeAdv!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSetsAdv!) x \(userWorkout!.planksTimeAdv!/60):00 min)"
            }
            else{
                setsAndRepsLabel.text = "(\(userWorkout!.planksSetsAdv!) x \(userWorkout!.planksTimeAdv!/60):\(userWorkout!.planksTimeAdv!%60) min)"
            }
        }
            
        else if (exercise == "Side Planks" && workoutLevel == "Beginner"){
            if (userWorkout!.sidePlanksSets == 0 || userWorkout!.sidePlanksTime == 0) {
                userWorkout!.sidePlanksSets = 3
                userWorkout!.sidePlanksTime = 60
            }
            if userWorkout!.sidePlanksTime!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSets!) x \(userWorkout!.sidePlanksTime!/60):00 min)"
            }
            else{
                setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSets!) x \(userWorkout!.sidePlanksTime!/60):\(userWorkout!.sidePlanksTime!%60) min)"
            }
        }
            
            
        else if (exercise == "Side Planks" && workoutLevel == "Intermediate"){
            if (userWorkout!.sidePlanksSetsInt == 0 || userWorkout!.sidePlanksTimeInt == 0) {
                userWorkout!.sidePlanksSetsInt = 3
                userWorkout!.sidePlanksTimeInt = 120
            }
            if userWorkout!.sidePlanksTimeInt!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSetsInt!) x \(userWorkout!.sidePlanksTimeInt!/60):00 min)"
            }
            else{
                setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSetsInt!) x \(userWorkout!.sidePlanksTimeInt!/60):\(userWorkout!.sidePlanksTimeInt!%60) min)"
            }
        }
            
            
        else if (exercise == "Side Planks" && workoutLevel == "Advanced"){
            if (userWorkout!.sidePlanksSetsAdv == 0 || userWorkout!.sidePlanksTimeAdv == 0) {
                userWorkout!.sidePlanksSetsAdv = 5
                userWorkout!.sidePlanksTimeAdv = 120
            }
            
            if userWorkout!.sidePlanksTimeAdv!%60 == 0{
                setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSetsAdv!) x \(userWorkout!.sidePlanksTimeAdv!/60):00 min)"
            }
            else{
            setsAndRepsLabel.text = "(\(userWorkout!.sidePlanksSetsAdv!) x \(userWorkout!.sidePlanksTimeAdv!/60):\(userWorkout!.sidePlanksTimeAdv!%60) min)"
            }
        }
            
        else if (exercise == "Leg Raise" && workoutLevel == "Beginner"){
            if userWorkout!.legRaiseSets == 0{
                userWorkout!.legRaiseSets = 3
                userWorkout!.legRaiseReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legRaiseSets!) x \(userWorkout!.legRaiseReps!))"
        }
            
        else if (exercise == "Leg Raise" && workoutLevel == "Intermediate"){
            if userWorkout!.legRaiseSets == 0{
                userWorkout!.legRaiseSetsInt = 3
                userWorkout!.legRaiseRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legRaiseSetsInt!) x \(userWorkout!.legRaiseRepsInt!))"
        }
            
        else if (exercise == "Leg Raise" && workoutLevel == "Advanced"){
            if userWorkout!.legRaiseSets == 0{
                userWorkout!.legRaiseSetsAdv = 3
                userWorkout!.legRaiseRepsAdv = 15
            }
            setsAndRepsLabel.text = "(\(userWorkout!.legRaiseSetsAdv!) x \(userWorkout!.legRaiseRepsAdv!))"
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Beginner"){
            if userWorkout!.shrugSets == 0{
                userWorkout!.shrugSets = 3
                userWorkout!.shrugReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.shrugSets!) x \(userWorkout!.shrugReps!))"
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Intermediate"){
            if userWorkout!.shrugSetsInt == 0{
                userWorkout!.shrugSetsInt = 3
                userWorkout!.shrugRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.shrugSetsInt!) x \(userWorkout!.shrugRepsInt!))"
        }
            
        else if (exercise == "Shrugs" && workoutLevel == "Advanced"){
            if userWorkout!.shrugSetsAdv == 0{
                userWorkout!.shrugSetsAdv = 3
                userWorkout!.shrugRepsAdv = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.shrugSetsAdv!) x \(userWorkout!.shrugRepsAdv!))"
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Beginner"){
            if userWorkout!.latPullSets == 0{
                userWorkout!.latPullSets = 3
                userWorkout!.latPullReps = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.latPullSets!) x \(userWorkout!.latPullReps!))"
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Intermediate"){
            if userWorkout!.latPullSetsInt == 0{
                userWorkout!.latPullSetsInt = 3
                userWorkout!.latPullRepsInt = 10
            }
            setsAndRepsLabel.text = "(\(userWorkout!.latPullSetsInt!) x \(userWorkout!.latPullRepsInt!))"
        }
            
        else if (exercise == "Lat Pulls" && workoutLevel == "Advanced"){
            if userWorkout!.latPullSetsAdv == 0{
                userWorkout!.latPullSetsAdv = 3
                userWorkout!.latPullRepsAdv = 8
            }
            setsAndRepsLabel.text = "(\(userWorkout!.latPullSetsAdv!) x \(userWorkout!.latPullRepsAdv!))"
        }
            
            
            
        else if (exercise == "Make Free Throws" && workoutLevel == "Beginner"){
            
            setsAndRepsLabel.text = "(5 In A Row)"        }
            
            
        else if (exercise == "Make Free Throws" && workoutLevel == "Intermediate"){
     
            setsAndRepsLabel.text = "(10 In A Row)"
            
        }
            
            
        else if (exercise == "Make Free Throws" && workoutLevel == "Advanced"){
         
            setsAndRepsLabel.text = "(15 In A Row)"        }
            
            
            
     
            
        else if (exercise == "5-10-5"){
            
            setsAndRepsLabel.text = "(5 Times)"
        }
            
        
        // if not specified return no text label
        else{setsAndRepsLabel.text = ""}
        
        
        return cell
    }
    
    
}

extension WorkoutDisplayViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // When a user clicks on an exercise this block will decide which view the user will see
        
        if (selectedWorkout[workoutType]![indexPath.row] == "Bench Press" || selectedWorkout[workoutType]![indexPath.row] == "Overhead Press" || selectedWorkout[workoutType]![indexPath.row] == "Dumbbell Press" || selectedWorkout[workoutType]![indexPath.row] == "Pullups" || selectedWorkout[workoutType]![indexPath.row] ==  "Tricep Extensions" || selectedWorkout[workoutType]![indexPath.row] ==  "Bicep Curls" || selectedWorkout[workoutType]![indexPath.row] ==  "Inclined Bench Press" || selectedWorkout[workoutType]![indexPath.row] ==  "Military Press" || selectedWorkout[workoutType]![indexPath.row] ==  "Preacher Curls" || selectedWorkout[workoutType]![indexPath.row] ==  "Upright Rows" || selectedWorkout[workoutType]![indexPath.row] ==  "Dips" || selectedWorkout[workoutType]![indexPath.row] ==  "Arnold Press" || selectedWorkout[workoutType]![indexPath.row] ==  "Side Lateral Raise" || selectedWorkout[workoutType]![indexPath.row] ==  "Kickbacks" || selectedWorkout[workoutType]![indexPath.row] == "Forearm Twists" || selectedWorkout[workoutType]![indexPath.row] == "Weighted Dips" || selectedWorkout[workoutType]![indexPath.row] == "Lat Pulls" || selectedWorkout[workoutType]![indexPath.row] == "Shrugs" || selectedWorkout[workoutType]![indexPath.row] == "Squat" || selectedWorkout[workoutType]![indexPath.row] == "Deadlift" || selectedWorkout[workoutType]![indexPath.row] == "Leg Press" || selectedWorkout[workoutType]![indexPath.row] == "Lunges" || selectedWorkout[workoutType]![indexPath.row] == "Hang Clean" || selectedWorkout[workoutType]![indexPath.row] == "Step-Ups" || selectedWorkout[workoutType]![indexPath.row] == "Hamstring Curls" || selectedWorkout[workoutType]![indexPath.row] == "Deep Side Lunges" || selectedWorkout[workoutType]![indexPath.row] == "Calf Raises" || selectedWorkout[workoutType]![indexPath.row] == "Reverse Lunges" || selectedWorkout[workoutType]![indexPath.row] == "One Legged Squats" || selectedWorkout[workoutType]![indexPath.row] == "Split Squat" || selectedWorkout[workoutType]![indexPath.row] == "Walking Lunges" || selectedWorkout[workoutType]![indexPath.row] == "Leg Raise" || selectedWorkout[workoutType]![indexPath.row] == "Dumbbell Calf Raises" || selectedWorkout[workoutType]![indexPath.row] == "Dumbbell Step-Ups") {
            
            performSegue(withIdentifier: "ToLiftDescription", sender: Any.self)
            
        }
            
        else if (selectedWorkout[workoutType]![indexPath.row] == "Vertical Leaps"){
            performSegue(withIdentifier: "ToJumpingExercisesDescription", sender: (Any).self)
        }
            
        else if (selectedWorkout[workoutType]![indexPath.row] == "Six Inches" || selectedWorkout[workoutType]![indexPath.row] == "Stationary Bike" || selectedWorkout[workoutType]![indexPath.row] == "40 Yard Dash" || selectedWorkout[workoutType]![indexPath.row] == "Stagger Sprints" || selectedWorkout[workoutType]![indexPath.row] == "Planks" || selectedWorkout[workoutType]![indexPath.row] == "Side Planks" || selectedWorkout[workoutType]![indexPath.row] == "Run" || selectedWorkout[workoutType]![indexPath.row] == "5-10-5"){
            performSegue(withIdentifier: "ToTimedExercisesDescription", sender: (Any).self)
        }
            
        else{
            performSegue(withIdentifier: "ToGeneralExercisesDescription", sender: (Any).self)
            
        }
        print(selectedWorkout[workoutType]![indexPath.row] + " is selected")
    }
}
