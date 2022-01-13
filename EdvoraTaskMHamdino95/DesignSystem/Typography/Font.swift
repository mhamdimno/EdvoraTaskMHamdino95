 

 import Foundation
 
 enum Font:String {

    case regular = "Inter-Regular"
    case medium = "Inter-Medium"
    case semiBold = "Inter-SemiBold"
      
    var name:String{
        return self.rawValue
    }
 }

