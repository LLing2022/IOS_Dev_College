import UIKit

//var greeting = "Hello, playground"

//print(greeting)

//var names : Array<String> = []
//names.append("ling")
//names += ["He"]
//print(names)
//
//var emails = [String]()
//emails.append("ling.he@gmail.com")
//emails += ["Linghe.lasalle.com"]
//emails.insert("New.email.com", at: 0)
//print(emails)
//emails.remove(at: 2)
//print(emails)
//
//print("Now have \(emails.count) emails")
//
//for em in emails{
//    print(em)
//}
//


//************** Round ****************
//var bmi = 23.389383
//
//print(round(bmi))
//// base on how many digit you need, * and / "10 or 100 or 1000...."
//print(round(bmi*10)/10)
//
//var abc = "a" ... "d"
//var xyz = "x" ... "z"
//var num = 0...10
//print(xyz.contains("y")) // the result is boolean
//
//var names = ["Lee", "Mark", "Sun", "Ho"]
//
//for index in 0..<names.count{
//    print("\(index+1) : \(names[index])")
//}
//for name in names{
//    print(name)
//}
//
//for (index, name) in names.enumerated(){
//    print("\(index+1) is \(name)")
//}
//
//var i = 0
//
//repeat{
//    print(i)
//    i += 1
//} while i < 10
//
//while i < 10 {
//    print(i)
//    i += 1
//}
var province = "QC"
var age = 18
if (age >= 18) {
if (province != "QC" && province != "AB" && province != "MB") && (age < 19){
print("You are NOT allowed to buy alcohol in \(province)!") } else {
        print("You are allowed to buy alcohol in \(province)!")
    }
} else {
print("You are NOT allowed to buy alcohol in \(province)!")
}

