//
//  ViewController.swift
//  Gym Reps
//
//  Created by R87 on 19/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.borderColor = UIColor.yellow.cgColor
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = 11
        signinButton.layer.cornerRadius = 11

        signinButton.layer.borderColor = UIColor.yellow.cgColor
        signinButton.layer.borderWidth = 1
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
}

