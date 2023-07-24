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
import FirebaseFirestore

class LoginPage: UIViewController {

    @IBOutlet weak var bgview2: UIView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var TxtEmail: UITextField!
    @IBOutlet weak var Img: UIImageView!
    
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
        refa = Firestore.firestore()
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        //refa.collection("Gym reps").document().setData(["Password": txtPassword.text!])
        setData()
    }
    

    func setData(){
        Auth.auth().createUser(withEmail: TxtEmail.text!, password: txtPassword.text!) { AuthResult, error in
            if error == nil{
                let uid = AuthResult?.user.uid
                self.refa.collection("user").document()
            }else{
                print(error?.localizedDescription)
            }
        }
    }
    

}
