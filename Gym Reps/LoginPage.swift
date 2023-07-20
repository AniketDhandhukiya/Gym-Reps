//
//  LoginPage.swift
//  Gym Reps
//
//  Created by R88 on 19/07/23.
//

import UIKit

class LoginPage: UIViewController {

    @IBOutlet weak var Img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Img.image?.ciImage?.applyingGaussianBlur(sigma: 25.25)
        // Do any additional setup after loading the view.
    }
    


}
