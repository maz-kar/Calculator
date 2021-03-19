
import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number //it will set the GVar to LVar. GVar can be transferred to other files
    }
    
    mutating func calculate(symbol: String) ->Double? {
        
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
            else if symbol == "=" {
                return perfomTwoNumCalculation(n2: n)
            }
            else {
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    private func perfomTwoNumCalculation(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            
            if operation == "+" {
                return n1 + n2
            }
            
        }
        return nil
    }
    
}
