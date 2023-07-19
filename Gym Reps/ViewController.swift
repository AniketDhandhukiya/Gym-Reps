//
//  ViewController.swift
//  Gym Reps
//
//  Created by R87 on 19/07/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ContinueBtn(_ sender: UIButton) {
        let navi = storyboard?.instantiateViewController(identifier: "LoginPage") as! LoginPage
        self.navigationController?.pushViewController(navi, animated: true)
    }
    
}

