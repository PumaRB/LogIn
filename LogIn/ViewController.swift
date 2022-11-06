//
//  ViewController.swift
//  LogIn
//
//  Created by Rimma Katushina on 06/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "000000", message: "Is it your password", preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
    
        let alert = UIAlertController(title: "User", message: "Is it your uername", preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

