
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    //as the displayLabel.text is a String the getter that we want to use should be sth els like Double
    //for future use whenever someone want an access to the displayValue is useful
    //what it does: it will try to convert what currently is inside the displayLabel.text into a Double and it fails, it will give a fatal error BUT if succeed it will return the number as the value of the displayValue
    var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double.")
            }
            return number
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        

        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "AC" {
                displayLabel.text = "0"
            }
            else if calcMethod == "+/-" {
                displayLabel.text = String(displayValue * -1)
            }
            else if calcMethod == "%" {
                displayLabel.text = String(displayValue / 100)
            }
        }
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                if numValue == "." {
                    displayLabel.text = "0."
                }
                else {
                    displayLabel.text = numValue
                }
                isFinishedTypingNumber = false
            } else {
                if numValue == "." && displayLabel.text!.contains(".") {
                    return
                }
                else {
                    displayLabel.text! += numValue
                }
            }
        }
            
    }
}
