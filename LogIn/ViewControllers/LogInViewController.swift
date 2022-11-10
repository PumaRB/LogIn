//
//  ViewController.swift
//  LogIn
//
//  Created by Rimma Katushina on 06/11/2022.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passworsTF: UITextField!
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "000000", message: "It is your password", preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotNameButton(_ sender: UIButton) {
    
        let alert = UIAlertController(title: "User", message: "It is your uername", preferredStyle: UIAlertController.Style.alert)
    
        alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func logInButton(_ sender: UIButton) {
        if passworsTF.text!.isEmpty && userNameTF.text!.isEmpty {
            let alert = UIAlertController(title: "Login failed", message: "Fill fields and try again", preferredStyle: UIAlertController.Style.alert)
        
            alert.addAction(UIAlertAction(title: "Got it", style: UIAlertAction.Style.default, handler: nil))

            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let ResultViewController = segue.destination as? ResultViewController else {return}
        ResultViewController.userName = userNameTF.text
    }
    
    
    @IBAction func inwind(for segue: UIStoryboardSegue){
        guard segue.source is ResultViewController else {return}
        userNameTF.text = ""
        passworsTF.text = ""
    }
}
