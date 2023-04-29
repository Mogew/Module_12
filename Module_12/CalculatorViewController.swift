import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate{
    
    var model = MainModel()

    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var splitNumber: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        billText.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        model.totalAmount = billText.text
        print(billText.text)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if let _ = model.totalAmount {
            performSegue(withIdentifier: "calculate", sender: sender)
        }
    }
    @IBAction func splitNumberChanged(_ sender: UIStepper) {
        let newSplitNumber = Int(sender.value)
        splitNumber.text = "\(newSplitNumber)"
        model.persons = newSplitNumber
    }
    
    @IBAction func tipPressed(_ sender: UIButton){
        billText.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        model.setPercentage(buttonsTag: sender.tag)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculate" {
            guard let resultVC = segue.destination as? ResultViewController else {return}
            print(model)
            resultVC.model = model
            
        }
    }
}

