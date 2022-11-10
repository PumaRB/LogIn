//
//  ResultViewController.swift
//  LogIn
//
//  Created by Rimma Katushina on 06/11/2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userName: String!
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Welcome,\(userName!)"
    }
}
