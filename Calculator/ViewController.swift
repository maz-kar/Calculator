
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
    
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //numButtonPressed: num shown on displayLabel
        
        if let numValue = sender.currentTitle{
            displayLabel.text = numValue
        }
    }

}

