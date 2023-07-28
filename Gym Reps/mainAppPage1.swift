//
//  mainAppPage1.swift
//  Gym Reps
//
//  Created by R87 on 28/07/23.
//

import UIKit

class mainAppPage1: UIViewController {

    @IBOutlet weak var cliLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        cliLb.layer.shadowColor = UIColor.systemGray.cgColor
        cliLb.layer.shadowOpacity = 8.4
        cliLb.layer.cornerRadius = 4.0
    }
}
