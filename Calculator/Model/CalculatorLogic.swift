
import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    func calculate(symbol: String) ->Double? {
        
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
