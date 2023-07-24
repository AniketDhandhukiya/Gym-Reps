//
//  LoginPage.swift
//  Gym Reps
//
//  Created by R88 on 19/07/23.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseCore

class LoginPage: UIViewController {

    @IBOutlet weak var bgview2: UIView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var Img: UIImageView!
    
    var ref : DatabaseReference!
    var refa : Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgView.layer.cornerRadius = 15
        bgView.layer.borderWidth = 1
        bgView.layer.borderColor = UIColor.white.cgColor
        bgview2.layer.cornerRadius = 15
        bgview2.layer.borderWidth = 1
        bgview2.layer.borderColor = UIColor.white.cgColor
        lblLogin.layer.borderWidth = 1
        //lblLogin.layer.borderColor = UIColor.sy.cgColor
        lblLogin.layer.cornerRadius = 11
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: TxtEmail.text!, password: txtPassword.text!) {[self] user, error in
            if error == nil{
                print("done")
            }else{
                print(error?.localizedDescription)
            }
        }
        
    }
    

}
