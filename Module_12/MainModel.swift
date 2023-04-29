import Foundation
struct MainModel {
    
    var percentage: Float = 0.1
    var totalAmount: String?
    var persons: Int = 2
    
    mutating func setPercentage(buttonsTag: Int){
        switch buttonsTag{
        case 0: percentage = 0
        case 1: percentage = 0.1
        case 2: percentage = 0.2
        default: print("Error setPercetage()")
            
        }
    }
    mutating func getSplittedAmount() -> Float {
        
            let temp = convertToFloat()
            print(temp)
            let result = (temp + (temp * percentage)) / Float(persons)
            return (result * 100.0).rounded() / 100
    }
    
    mutating func convertToFloat() -> Float {
        if let stringNumber = totalAmount {
            print(stringNumber)
            if let result = NumberFormatter().number(from: stringNumber){
                print(result)
                return result.floatValue
            }
        }
        return 0.0
    }
}
