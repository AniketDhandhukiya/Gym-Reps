//
//  LoginPage.swift
//  Gym Reps
//
//  Created by R88 on 19/07/23.
//

import UIKit

class LoginPage: UIViewController {

    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var Img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TxtEmail.layer.cornerRadius = 21
        TxtEmail.layer.borderWidth = 1
        TxtEmail.layer.borderColor = UIColor.white.cgColor
        
    }
    


}
