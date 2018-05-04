//
//  FirstTableViewController.swift
//  Bullet Journal
//
//  Created by Amanda Zhao on 4/30/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit

class FirstTableViewController: UIViewController {
    
    struct Entry {
        var date: String
        var mood: String
        var thankfulFor: [String]
        var goodMemory: String
        var toDos: [String]
        var toDoItems: [String]
        
        
        
    }

    
    @IBOutlet weak var firstAddBarButton: UIBarButtonItem!
    @IBOutlet weak var firstEditBarButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    var entries = [Entry]()
    
    var dates = ["April 30, 2018",
                "April 23, 2018",
                "April 21, 2018",
                "April 18, 2018",
                "April 16, 2018",
                "April 14, 2018",
                "April 12, 2018",
                "April 10, 2018"]
    
    var happyEntry = Entry(date: "April 30, 2018", mood: "Happy", thankfulFor: ["hi", "there", "as"], goodMemory: "f", toDos: ["hi", "there", "as"], toDoItems: ["hi", "there", "as"])
    var sadEntry = Entry(date: "April 23, 2018", mood: "Sad", thankfulFor: ["hi", "there", "as"], goodMemory: "f", toDos: ["hi", "there", "as"], toDoItems: ["hi", "there", "as"])
    var excitedEntry = Entry(date: "April 21, 2018", mood: "Excited", thankfulFor: ["hi", "there", "as"], goodMemory: "f", toDos: ["hi", "there", "as"], toDoItems: ["hi", "there", "as"])
    var anxiousEntry = Entry(date: "April 18, 2018", mood: "Anxious", thankfulFor: ["hi", "there", "as"], goodMemory: "f", toDos: ["hi", "there", "as"], toDoItems: ["hi", "there", "as"])
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        entries.append(happyEntry)
        entries.append(sadEntry)
        entries.append(excitedEntry)
        entries.append(anxiousEntry)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showMood") {
            
        } else if (segue.identifier == "AddCell") {
        }
    }
    
    @IBAction func unwindFromMoodViewController(segue:UIStoryboardSegue) {
  
    }
    
    @IBAction func firstEditButtonPressed(_ sender: UIBarButtonItem) {
        if tableView.isEditing {
            tableView.setEditing(false, animated: true)
            firstAddBarButton.isEnabled = true
            firstEditBarButton.title = "Edit"
        } else {
            tableView.setEditing(true, animated: true)
            firstAddBarButton.isEnabled = false
            firstEditBarButton.title = "Done"
        }
    }
    
    

}


extension FirstTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let yellowColor = UIColor(red: 255/255, green: 233/255, blue: 209/255, alpha: 1.0)
        
        let blueColor = UIColor(red: 109/255, green: 207/255, blue: 246/255, alpha: 1.0)
        
        let pinkColor = UIColor(red: 238/255, green: 183/255, blue: 200/255, alpha: 1.0)
        
        let greenColor = UIColor(red: 179/255, green: 245/255, blue: 163/255, alpha: 1.0)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
        cell.textLabel?.text = dates[indexPath.row]
        
        if entries[indexPath.row].mood == "Happy" {
            cell.backgroundColor = yellowColor
        } else if entries[indexPath.row].mood == "Sad" {
            cell.backgroundColor = blueColor
        } else if entries[indexPath.row].mood == "Excited" {
            cell.backgroundColor = pinkColor
        } else if entries[indexPath.row].mood == "Anxious" {
            cell.backgroundColor = greenColor
        }
        
        
        return cell
    }
}
