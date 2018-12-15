//
//  DetailViewController.swift
//  TableView
//
//  Created by cagdas on 13/04/2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var users = [User]()
    var user = User()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lblFullName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = user.picture
        lblFullName.text = user.firsName + " " + user.lastName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
