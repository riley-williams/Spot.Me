//
//  FitnessDataViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class FitnessDataViewController: UIViewController {
    
    
    var thisUser: User?
    
    @IBOutlet weak var ageTextField: UITextField!
    
    
    @IBOutlet weak var heightFeetTextField: UITextField!
    
    
    @IBOutlet weak var heightInchesTextField: UITextField!
    
    
    @IBOutlet weak var weightTextField: UITextField!
    
    
    @IBOutlet weak var benchMaxTextField: UITextField!
    
    
    @IBOutlet weak var deadliftMaxTextField: UITextField!
    
    
    @IBOutlet weak var squatMaxTextField: UITextField!
    
    
    @IBOutlet weak var fortyYardDashTextField: UITextField!
    
    
    @IBOutlet weak var verticalLeapTextField: UITextField!
    
    
    @IBOutlet weak var fiveTenFiveTextField: UITextField!
    
    var bodyType = 1
    let zero = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
      
        
        let sharedData = UIApplication.shared.delegate as! AppDelegate
        thisUser = sharedData.getUserData()
        
        // this if else checks to see if the user is nil, if there is no user data the text fields get zero.
        // if there is user data then the text fields are filled with that data.
        if thisUser == nil{
            
            ageTextField.text = "\(zero)"
            heightFeetTextField.text = "\(zero)"
            heightInchesTextField.text = "\(zero)"
            benchMaxTextField.text = "\(zero)"
            deadliftMaxTextField.text = "\(zero)"
            squatMaxTextField.text = "\(zero)"
            fortyYardDashTextField.text = "\(zero)"
            verticalLeapTextField.text = "\(zero)"
            fiveTenFiveTextField.text = "\(zero)"
            weightTextField.text = "\(zero)"
            
        }
            
        else{
            ageTextField.text = "\(thisUser!.age!)"
            heightFeetTextField.text = "\(thisUser!.heightFeet!)"
            heightInchesTextField.text = "\(thisUser!.heightInches!)"
            weightTextField.text = "\(thisUser!.weight!)"
            benchMaxTextField.text = "\(thisUser!.bench!)"
            deadliftMaxTextField.text = "\(thisUser!.deadlift!)"
            squatMaxTextField.text = "\(thisUser!.squat!)"
            fortyYardDashTextField.text = "\(thisUser!.fortyYardDash!)"
            verticalLeapTextField.text = "\(thisUser!.vertical!)"
            fiveTenFiveTextField.text = "\(thisUser!.agility!)"
            
        }
    }
    
    
    @IBAction func bodyTypeSelection(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            bodyType = 1
        }
        else if sender.selectedSegmentIndex == 1{
            bodyType = 2
        }
        else if sender.selectedSegmentIndex == 2{
            bodyType = 3
        }
        
    }
    
    
    

    @IBAction func HomeButtonClicked(_ sender: Any) {
        //shows the homepage
        AppDelegate.showHomepage()
    }
    
    
    @IBAction func submitButtonClicked(_ sender: Any) {
        
        // casting all the text fields to int and float values
        let age: Int? = Int(ageTextField.text!)
        let heightFeet: Int? = Int(heightFeetTextField.text!)
        let heightInches: Int? = Int(heightInchesTextField.text!)
        let weight: Int? = Int(weightTextField.text!)
        let benchMax: Int? = Int(benchMaxTextField.text!)
        let deadliftMax: Int? = Int(deadliftMaxTextField.text!)
        let squatMax: Int? = Int(squatMaxTextField.text!)
        let fortyYardDash: Float? = Float(fortyYardDashTextField.text!)
        let verticalLeap: Float? = Float(verticalLeapTextField.text!)
        let fiveTenFive: Float? = Float(fiveTenFiveTextField.text!)
        
        
        // block of if else statements does the error checking for the
        // text field inputs, additional code shows an alert dialog
        // else statement loads the user information
        if age == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if heightFeet == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if heightInches == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
            
        else if weight == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if benchMax == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if deadliftMax == nil{
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if squatMax == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if fortyYardDash == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if verticalLeap == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else if fiveTenFive == nil{
            
            let wrongTypeAlert = UIAlertController(title: "Format Error", message: "You must enter a numerical value for each field, decimals only allowed for 40 Yard Dash, Vertical Leap, and 5-10-5", preferredStyle: .alert)
            
            wrongTypeAlert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                //print("The \"OK\" alert occured.")
            }))
            
            self.present(wrongTypeAlert, animated: true, completion: nil)
        }
        
        else{
            thisUser = User(age: age!, heightFeet: heightFeet!, heightInches: heightInches!, weight: weight!, bodyType: bodyType, bench: benchMax!, deadlift: deadliftMax!, squat: squatMax!, fortyYardDash: fortyYardDash!, vertical: verticalLeap!, agility: fiveTenFive!)
            
            print(thisUser!.age!) // debug printing
            
            // passing Data through the app delegate
            let sharedData = UIApplication.shared.delegate as! AppDelegate
            sharedData.passUserData(thisUser)
            
            AppDelegate.showHomepage()
            
        }
    }
    

}
