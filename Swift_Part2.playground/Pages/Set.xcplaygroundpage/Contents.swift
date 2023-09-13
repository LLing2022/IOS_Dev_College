//: [Previous](@previous)

import Foundation

/* Set is "like" Array, but :
 1. You cannot insert 2 elements with the same value (unique values)
 2. You don't have control over the order of inserted elements.
 */

var listOfCourses = Set<String>()

listOfCourses.insert("IOS")
listOfCourses.insert("Android")
listOfCourses.insert("C#")
//listOfCourses.insert("IOS")

print(listOfCourses)

//listOfCourses.insert("ios")
//print(listOfCourses)

for (index, course) in listOfCourses.enumerated(){
    print("#\(index) : \(course)")
}
