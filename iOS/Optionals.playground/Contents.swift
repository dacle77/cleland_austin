//: Playground - noun: a place where people can play
//Cleland Austin

import UIKit

var name: String = "Jay"
var pet: String?

pet = "Skippy"

var xFactor: String?
xFactor = "Cleland"
print(xFactor)

var present: String? = "Apple Watch"

if let unwrappedPresent = present {
    print("OMG THANK YOU FOR THE \(unwrappedPresent)")
}

var present2: String! = "Apple Watch"
print("\(present2)")

if let newPres = present2 {
    print(" 👻 👻 👻 👻 \(newPres)")
}



present2 = nil
print("\(present2)")

