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

    @IBOutlet weak var forgotPassBtn: UIButton!
    @IBOutlet weak var bgview2: UIView!
    @IBOutlet weak var loginB: UIButton!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var lblLogin: UILabel!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var TxtEmail: UITextField!
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
        lblLogin.layer.cornerRadius = 11
        refa = Firestore.firestore()
    }
    
    @IBAction func loginBtnAction(_ sender: Any) {
        setData()
    }
    
    @IBAction func backBtn(_ sender: Any) {
        let nav = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func setData(){
        Auth.auth().signIn(withEmail: TxtEmail.text!, password: txtPassword.text!) { authDataResult, error in
            if error == nil{
                print("done")
                self.navigationToMainPage()
            }else{
                print(error?.localizedDescription)
            }
        }
    }
    
    
    func navigationToMainPage(){
        var navi = storyboard?.instantiateViewController(identifier: "AppPage1") as! AppPage1
        navigationController?.pushViewController(navi, animated: true)
        
    }
    

}
