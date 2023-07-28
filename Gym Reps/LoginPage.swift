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
        LoginSetUp()
    }
    
    @IBAction func backBtn(_ sender: Any) {
        _ = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true)
    }
    
    func navigationToMainPage(){
        let navi = storyboard?.instantiateViewController(identifier: "mainAppPage1") as! mainAppPage1
        navigationController?.pushViewController(navi, animated: true)
        
    }

    func showAlert(id:String){
        let alert = UIAlertController.init(title: "Enter OTP", message: "Please Enter a OTP", preferredStyle: .alert)
        alert.addTextField()
        alert.addAction(UIAlertAction.init(title: "Enter", style: .default, handler: { i in
            self.navigationToMainPage()
        }))
        present(alert, animated: true)
    }
}

//-- Login Code --/

extension LoginPage {
    
    func LoginSetUp(){
        Auth.auth().signIn(withEmail: TxtEmail.text!, password: txtPassword.text!) {[self] authDataResult, error in
            if error == nil{
                print("done")
                showAlert(id: "")
            }else{
                print(error?.localizedDescription ?? "")
            }
        }
    }
}
