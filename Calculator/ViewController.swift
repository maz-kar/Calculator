
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double.")
        }
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "AC" {
                displayLabel.text = "0"
            }
            else if calcMethod == "+/-" {
                displayLabel.text = String(Int(number * -1))
            }
            else if calcMethod == "%" {
                displayLabel.text = String(number / 100)
            }
        }
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle { //numValue is one of 0-9
            if isFinishedTypingNumber {
                if numValue == "." {
                    displayLabel.text = "0."
                }
                else {
                    displayLabel.text = numValue
                }
                isFinishedTypingNumber = false
            } else {
                if numValue == "." && displayLabel.text!.contains("."){
                    return
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
            
        }
            
    }
}
