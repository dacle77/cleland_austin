//: Playground - noun: a place where people can play

import UIKit

var toDoList: [String] = ["Learn iOS", "Build the next Flappy Bird", "Retire in Cancun"]
var toDoList2 = [String]()
toDoList2.append("Learn iOS")
toDoList2.append("Build the next Flappy Birds")
toDoList2.append("Retire in Hawaii again")
print(toDoList2)

var arrayOfInts = [1,2,3,4,5]
print([1])
print([2], [3], [4])
print("\(arrayOfInts[0...1])")
print("\(arrayOfInts[0..<5])")
print("\(arrayOfInts[0...4])")


var arr = [1,2,3,4]
arr[0] = 8
print(arr)

var nums2 = [1,2,3,4]
var popped = arrayOfInts.remove(at: 0)
print(popped)
print(arrayOfInts)

var arrayOfInts3 = [1,2,3,4,5]
arrayOfInts3.insert(6, at: arrayOfInts3.count)

var starters = ["Fisher", "Kobe", "Gasol", "Bynum", "World Peace"]
for starter in starters {
    print(starter)
}

for i in 0..<starters.count {
    print(starters[i])
}
