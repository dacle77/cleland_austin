//: Playground - noun: a place where people can play

import UIKit

func sayHello() {
    print("Hello how you doin?")
}

sayHello()

func sayHelloName(name: String) {
    print("Hello \(name), how are you")
}

sayHelloName(name: "daCle")

func printDescription(width w: Int, height h: Int) {
    print("My width is \(w) and my height is \(h)")
}

printDescription(width: 10, height: 20)

func printDescriptionWithWidth(w: Int, andHeigth h: Int) {
    
}

printDescriptionWithWidth(w: 10, andHeigth: 20)


//var myInt = 1
//func changeMyInt(someInt: Int) {
//    someInt = someInt + 1
//    print(someInt)
//}

//var myInt = 1
//func changeMyInt(someInt: Int) {
//    var someInt = someInt
//    someInt = someInt + 1
//    print(someInt)
//}
//
//changeMyInt(someInt: myInt)
//print(myInt)
//
//
//func sayHello(name: String = "DaCle") {
//    print("Hey \(name)")
//}
//
//sayHello()
//sayHelloName(name: "Yoda it is")

func sayHello(name: String = "DaCle") -> String {
    return "Hey \(name)"
}

var greeting: String?
greeting = sayHello()
print(greeting)

func calculateAreaOfRectangleWithWidth(w: Int, andHeight h: Int) -> Int {
    return w * h
}
var area = calculateAreaOfRectangleWithWidth(w: 10, andHeight: 3)
print(area)

func lookForSomethingIn(dictionary: [String: Int], forKey key: String) -> Int? {
    if let value = dictionary[key] {
        return value
    } else {
        return nil
    }
}
var jerseyNumbers = ["Kobe": 24, "Curry": 30]
var jerseyNumber = lookForSomethingIn(dictionary: jerseyNumbers, forKey: "Kobe")
if let num = jerseyNumber {
    print(num)
}

func findMinOf(arr: [Int]) -> Int? {
    if arr.count > 0 {
        var min = arr[0]
        for num in arr {
            if num < min {
                min = num
            }
        }
        return min
    } else {
        return nil
    }
}

findMinOf(arr: [1457675,54562,54563,54564457,65457,546576457,574575,8445785,3545736,64562,64574,445756])









