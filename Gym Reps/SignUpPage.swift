//
//  SignUpPage.swift
//  Gym Reps
//
//  Created by R88 on 21/07/23.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase

class SignUpPage: UIViewController {
    
    @IBOutlet weak var userTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var PassTxt: UITextField!
    @IBOutlet weak var rePassTxt: UITextField!

    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    var refa : Firestore!
    
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
        cancelBtn.layer.borderWidth = 0.8
        cancelBtn.layer.borderColor = UIColor.black.cgColor
        cancelBtn.layer.cornerRadius = 11
        refa = Firestore.firestore()
    }
    
    @IBAction func cancelBtn(_ sender: Any) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func SignUpBtn(_ sender: Any) {
        addData()
    }
    
    func addData() {
        Auth.auth().createUser(withEmail: emailTxt.text!, password: PassTxt.text!) {[self] authDataResult, error in
            if error == nil{
                self.refa.collection("user").addDocument(data: ["Name": userTxt.text, "Email or Number": emailTxt.text, "Password": PassTxt.text, "ReEnter Password": rePassTxt.text])
            }else{
                print(error.debugDescription)
            }
        }
    }
    
}
