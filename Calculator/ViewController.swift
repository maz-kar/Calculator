
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //as soon as calcButtonPressed, will be again ready to get new digits
        isFinishedTypingNumber = true
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {

        if let numValue = sender.currentTitle{
            
            if isFinishedTypingNumber { //ready to get digit
                displayLabel.text = numValue
                //after getting the first digit, turn and keep it false to get more digits
                isFinishedTypingNumber = false
            } else {
                displayLabel.text = displayLabel.text! + numValue
            }
                
        }
            
    }
}
