//
//  ResultViewController.swift
//  LogIn
//
//  Created by Rimma Katushina on 06/11/2022.
//

import UIKit

class ResultViewController: UIViewController {
    

    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userNameField = segue.destination as? ViewController else {return}
        resultLabel.text = userNameField.userName
    }
}
