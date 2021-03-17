
import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    func calculate(symbol: String) -> Double? {
        
        if symbol == "AC" {
            return 0
        }
        else if symbol == "+/-" {
            return number * -1
        }
        else if symbol == "%" {
            return number * 0.01
        }
    return nil
    }
}
