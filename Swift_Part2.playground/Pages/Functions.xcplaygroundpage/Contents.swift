import Foundation

//func mySum(firstNumber : Int, secondNumber : Int) {
//    print(firstNumber + secondNumber)
//
//}
//
//mySum(firstNumber: 10, secondNumber: 20)
//
//
///// This function return a result of 2 number sum up
//func mySum( _ firstNumber : Int, secondNumber : Int) -> Int{
//    return firstNumber + secondNumber
//}
//
//print("The second one: \(mySum(10, secondNumber: 20)) ")
//
//
//func mySum( _ firstNumber : Int, _ secondNumber : Int, thirdNumber : Int = 50) -> Int {
//    return(firstNumber + secondNumber + thirdNumber)
//}
//
//print("The third version : \( mySum(10, 20))")
//
//// variadic function
//
//func mySum( numbers : Int... ) -> Int {
//    var result = 0
//    for number in numbers{
//        result += number
//    }
//
//    return result
//}
//
//print("The last version :  \(mySum(numbers: 10,20,30,40))")
//

/// My own round function

func myRound( _ number : Double, _ digits : Int) -> Double{
    var result = Double(number * pow(10, digits))/pow(10, digits)
    
    return result  
}

print(myRound(25.2337, 2))
