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
        signUpButton.layer.shadowColor = UIColor.black.cgColor
        signUpButton.layer.shadowOpacity = 4.4
        signUpButton.layer.shadowRadius = 4.0
        signUpButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 4.4
        loginButton.layer.shadowRadius = 4.0
        loginButton.layer.shadowOffset = CGSize(width: 4, height: 4)
    }

    @IBAction func loginBtn(_ sender: UIButton) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
    @IBAction func SignBtn(_ sender: Any) {
        let navi = storyboard?.instantiateViewController(identifier: "SignUpPage") as! SignUpPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
    @IBAction func AsAGuetBtn(_ sender: Any) {
        var navi = storyboard?.instantiateViewController(identifier: "AppPage1") as! AppPage1
        navigationController?.pushViewController(navi, animated: true)
    }
}

