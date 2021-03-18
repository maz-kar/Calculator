
import Foundation

struct CalculatorLogic {
    
    var number: Double?
    
    func calculate(symbol: String) ->Double? {
        
        if let n = number {
            
            if symbol == "AC" {
                return 0
            }
            else if symbol == "+/-" {
                return n * -1
            }
            else if symbol == "%" {
                return n * 0.01
            }
        }
        return nil
    }
    
}
