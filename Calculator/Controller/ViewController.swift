
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel! //displaylabel on top
    
    private var isFinishedTypingNumber: Bool = true //if true means we just started to type
    
    private var calculator = CalculatorLogic() //object from Model
    
    private var displayValue: Double { //to prevent casting all over the place
        
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double.")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) { //when 0-9 was pressed
        if let numValue = sender.currentTitle { //to catch the pressed number
            
            if isFinishedTypingNumber { //Just started to type
                if numValue == "." { //if the pressed value started with .
                    displayLabel.text = "0." //change the display to 0.
                }
                else {
                    displayLabel.text = numValue //if the pressed num is not starting with "." show the num on displayLabel
                }
                isFinishedTypingNumber = false //continue accepting digits
            }
            else { //case: if isFinishedTypingNumber == false
                if numValue == "." && displayLabel.text!.contains(".") { //To cever both cases of starting with "." and case of 2.3
                    return //Don't let any extra "."
                }
                else {
                    displayLabel.text! += numValue //
                }
            }
        }
            
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
            
        }
    }
    

}
