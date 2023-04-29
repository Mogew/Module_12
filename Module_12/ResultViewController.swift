import UIKit

class ResultViewController: UIViewController {
    
    var model: MainModel?
    
    @IBOutlet weak var finalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalAmount.text = "\(model!.getSplittedAmount())"
    }
    
    @IBAction func pressedRecalculation(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
