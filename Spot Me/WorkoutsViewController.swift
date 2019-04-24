//
//  WorkoutsViewController.swift
//  Spot Me
//
//  Created by Evans, Jonathan on 4/4/19.
//  Copyright © 2019 Riley Williams. All rights reserved.
//

import UIKit

class WorkoutsViewController: UIViewController {
    
    let positions = [
        "Baseball":["Infield", "Outfield", "Pitcher", "Catcher"],
        "Basketball":["Point Guard", "Shooting Guard", "Forward", "Center"],
        "Football":[ "Quarterback", "Running Back", "Wide Reciever", "Tight End", "Offensive Line", "Cornerback", "Free Safety", "Linebacker", "Defensive Line"],
        "Soccer":["Striker", "Midfield", "Defense", "Goalie"]
    ]
    
    var sports = [String]()
    var sport = "default"
    var position = "default"
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

       sports.append(contentsOf: positions.keys)
        
        func filterList() { // should probably be called sort and not filter
            sports.sort()  // sort the fruit by name
            tableView.reloadData(); // notify the table view the data has changed
        }
        
        filterList() //Keeps the workouts list in alpabetical order
    }
    

    @IBAction func HomeButtonClicked(_ sender: Any) {
        AppDelegate.showHomepage()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDisplay"{
            //print("going to the details page")
            
            let indexPath = self.tableView.indexPathForSelectedRow
            sport = sports[indexPath!.section]
            let positionsInSport = positions[sport]
            position = positionsInSport![indexPath!.row]
            
            let destinationVC = segue.destination as! WorkoutDisplayViewController
            destinationVC.positionName = position
            destinationVC.sportName = sport
    
        }
        
    }
}

extension WorkoutsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sport = sports[section]
        return (positions[sport]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        let sport = sports[indexPath.section] //String
        let postionsInSport = positions[sport]  //Array of positions in the sport
        let position = postionsInSport![indexPath.row]
        
        cell.textLabel?.text = position
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sports.count
    }
    
}

extension WorkoutsViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sport = sports[section]
        return sport
    }
    
}
