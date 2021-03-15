
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {

        if let numValue = sender.currentTitle{
            
            if isFinishedTypingNumber { //display shows 0 or is ready to get new num
                displayLabel.text = numValue //e.g: 1
                isFinishedTypingNumber = false // let it continue typing
            } else {
                //if this else triggered, add to previous num in the displayLabel + newValue (numValue)
                displayLabel.text = displayLabel.text! + numValue
            }
                
        }
            
    }
}

//A property needed that keeps hold of whether if the user is done typing the number
