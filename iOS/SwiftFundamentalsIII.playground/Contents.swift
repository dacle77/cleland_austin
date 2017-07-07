//: Playground - noun: a place where people can play
// Cleland Austin

import UIKit

var arr:[Int] = []

for i in 1...255 {
    arr.append(contentsOf: [i])
}
print(arr)


for i in 1...100 {

    var random = Int(arc4random_uniform(255))
    var random2 = Int(arc4random_uniform(255))
    var temp = 0
    
    temp = arr[random]
    arr[random] = arr[random2]
    arr[random2] = temp
    print(random , "😇",temp,arr[random], arr[random2] )
    
    if arr[i] == 42 {
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(i)")
        arr.remove(at: arr[i])
    }
}

