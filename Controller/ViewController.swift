//
//  ViewController.swift
//  TableView
//
//  Created by cagdas on 13/04/2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var users = [User]()
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user1 = User()
        user1.firsName = "Norman"
        user1.lastName = "Reedus"
        user1.picture = UIImage(named: "norman")!
        users.append(user1)
        
        let user2 = User()
        user2.firsName = "Lauren"
        user2.lastName = "Cohan"
        user2.picture = UIImage(named: "lauren")!
        users.append(user2)
        
        let user3 = User()
        user3.firsName = "Andrew"
        user3.lastName = "Lincoln"
        user3.picture = UIImage(named: "andrew")!
        users.append(user3)
        
        let user4 = User()
        user4.firsName = "Emily"
        user4.lastName = "Kinney"
        user4.picture = UIImage(named: "emily")!
        users.append(user4)
        
        let user5 = User()
        user5.firsName = "Chandler"
        user5.lastName = "Riggs"
        user5.picture = UIImage(named: "chandler")!
        users.append(user5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = users[indexPath.row].firsName + " - " + users[indexPath.row].lastName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        user = users[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.user = self.user
        }
    }
    
}

