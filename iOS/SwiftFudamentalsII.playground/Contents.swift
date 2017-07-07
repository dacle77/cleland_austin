//: Playground - noun: a place where people can play

import UIKit

var number = 100

for i in 1...255 {
    print(i)
}

for x in 1...200 {
    
    
    if x % 3 == 0 {
        print("🎃 Fizz ",x)
    }
    
    if x % 5 == 0 {
        print("🤖 Buzz ",x)
    }
    
    if x % 3 == 0 && x % 5 == 0 {
        print("👿 FizzBuzz 👿")
    }
}
