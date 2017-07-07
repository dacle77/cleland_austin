//: Playground - noun: a place where people can play
// Cleland Austin

import UIKit

var myDict2 = [String: Int]()

var dictionary = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]

if let  jerseyNumber = dictionary["kobe"] {
    print(jerseyNumber)
}

print(dictionary)
dictionary["Fisher"] = 2
print(dictionary)
dictionary["Kobe"] = 24
print(dictionary)

//var lebronsNumber = dictionary.removeValue(forKey: "Lebron")
//print(lebronsNumber)

if let lebronsNumber = dictionary.removeValue(forKey: "Lebron") {
    print(lebronsNumber)
}

for (key, value) in dictionary {
    print("The key is \(key)and the value is \(value)")
}

for x in dictionary {
    print(x)
}

