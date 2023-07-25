//
//  ViewController.swift
//  Gym Reps
//
//  Created by R87 on 19/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AsaGuestBtn: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        AsaGuestBtn.layer.borderWidth = 0.8
        AsaGuestBtn.layer.borderColor = UIColor.black.cgColor
        AsaGuestBtn.layer.cornerRadius = 11
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
    @IBAction func SignBtn(_ sender: Any) {
        let navi = storyboard?.instantiateViewController(identifier: "SignUpPage") as! SignUpPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
}

