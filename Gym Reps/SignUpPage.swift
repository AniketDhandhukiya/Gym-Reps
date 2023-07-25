//
//  SignUpPage.swift
//  Gym Reps
//
//  Created by R88 on 21/07/23.
//

import UIKit

class SignUpPage: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.layer.cornerRadius = 15
        view1.layer.borderWidth = 1
        view1.layer.borderColor = UIColor.white.cgColor
        view2.layer.cornerRadius = 15
        view2.layer.borderWidth = 1
        view2.layer.borderColor = UIColor.white.cgColor
        view3.layer.cornerRadius = 15
        view3.layer.borderWidth = 1
        view3.layer.borderColor = UIColor.white.cgColor
        view4.layer.cornerRadius = 15
        view4.layer.borderWidth = 1
        view4.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        navigationController?.popToRootViewController(animated: true)
    }
    
}
