
import UIKit

class AppPage1: UIViewController {

    @IBOutlet weak var ClientsLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        ClientsLb.layer.shadowOpacity = 4.4
        ClientsLb.layer.cornerRadius = 4.0
        ClientsLb.layer.shadowColor = UIColor.white.cgColor

    }
    

}
