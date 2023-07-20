//
//  LoginPage.swift
//  Gym Reps
//
//  Created by R88 on 19/07/23.
//

import UIKit

class LoginPage: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var Img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtEmail.layer.cornerRadius = 19
        TxtEmail.layer.borderWidth = 1
        TxtEmail.layer.borderColor = UIColor.white.cgColor
        txtPassword.layer.cornerRadius = 19
        txtPassword.layer.borderWidth = 1
        txtPassword.layer.borderColor = UIColor.white.cgColor
        
    }
    


}
