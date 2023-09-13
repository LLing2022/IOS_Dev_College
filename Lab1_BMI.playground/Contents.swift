import Foundation
import Darwin

//var greeting = "Hello, playground"
//print(greeting)

//var name : String = "Ling"
//var lastName = "He"
//
//var intNumber = 20
//var integerNumber : Int = 10
//
//let pi : Float = 3.14159
//
//print(type(of: pi))
//print("The pi value is " + String(pi) + "." )
//print("The pi value is \(pi) ." )

// lab1_Def BMI : Body Mass Index (BMI) is a person's weight in kilograms (or pounds) divided by the square of height in meters (or feet).

let firstName : Array<String> = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
let lastName : Array<String> = ["Carvalho", "Zukemberg", "Smith", "Olivier","Francois"]
let height : Array<Int> = [174, 178, 166, 182, 177] // in centimeters
let weight : Array<Double> = [82.5, 78.2, 120.0, 71.2, 92.9] // in kg

for pt in 0...(firstName.count-1){
    //get basic info
    var fullName = "\(firstName[pt]) \(lastName[pt])"
    var Height = Double(height[pt])/100
    var Weight = (weight[pt])
    var bmi = Weight/(Height*Height)
    // if need to use the data in next validation, round it before use it
    bmi = round( bmi * 10 )/10
    
    var classcifacation = "";
    //check BMI classifacation
    if bmi < 18.5{
        classcifacation = "Underweight"
    }else if bmi <= 24.9{
        classcifacation = "Normal weight"
    }else if  bmi <= 29.9{
        classcifacation = "Overweight"
    }else if bmi <= 100{
        classcifacation = "Obesity"
    }
    //print result
    print("Patient number \(pt + 1) : \(fullName)")
    print(" - Height : \(height[pt]) cm")
    print(" - Weight : \(weight[pt]) kg")
    print(" - BMI : \(bmi)")
    print(" - Classification : \(classcifacation)")
    print("-----------------------------------------")
    
    
}

//var BMI : Array<Double> = []
//var ht : Double = 0;
//var wt : Double = 0;
//var pt = 0;
//if firstName.isEmpty{
//    print("No more patient.")
//}else{
//    wt = weight[pt]
//    ht = Double(height[pt]/100)
//    BMI.append(wt/(ht*ht))
//    pt = pt + 1
//}

