
struct MainModel {
    
    var percentage: Float?
    
    mutating func setPercentage(buttonsTag: Int){
        switch buttonsTag{
        case 0: percentage = 0
        case 1: percentage = 0.1
        case 2: percentage = 0.2
        default: print("Error setPercetage()")
            
        }
    }
}
