//: Playground - noun: a place where people can play
// Cleland Austin

import UIKit


class Animal {
    var name: String
    var health: Int = 100
    
    init(name: String) {
        self.name = name
    }
    
    func displayHealth() {
        print(" 🦁 Health is \(self.health)")
    }
}


class Cat: Animal {
    var catHealth: Int = 150
    
    override init(name: String) {
        super.init(name: name)
        health = self.catHealth
    }
    
    func growl() {
        print(" 🦁 🦁 Raaarrraarr 🦁 🦁 ")
    }
    
    func run() {
        if (health > 0) {
            print("🦁 running health: \(catHealth) 🦁 ")
            health -= 10
        }
        if (health < 0) {
            print(" 🦁 You need to rest! 🦁 ")
        }
    }
}

class Cheetah: Cat {
    var cheetahHealth: Int = 200
    
    override func run() {
        print("🦁 Running Fast")
        health -= 50
    }
    
    func sleep() {
        health += 50
        if (health > 200) {
            health = 200
        }
    }
}

class Lion: Cat {
    var lionHealth: Int = 200
    
    override func growl() {
        print(" 🦁 ROAR!!!! I am the King of the Jungle 🦁 " )
        health = self.lionHealth
    }
}



    ///////////////////////////////////////////////////////////////////////
   //                ***>>>     TEST AREA     <<<***                    //
  ///////////////////////////////////////////////////////////////////////

let myAnimal: Animal = Animal(name: "Fluffy")
let myCat: Cat = Cat(name: "Purrr")
let myLion: Lion = Lion(name: "Ruffus")
let myCheetah: Cheetah = Cheetah(name: "Chester")


//myAnimal.displayHealth()
//myCat.displayHealth()
//
//myCat.growl()
//
//print("🦁 Health \(myCat.health), 🦁 Cat health \(myCat.catHealth) 🦁 ")
//
//myCat.run()
//myLion.growl()
//
//print("🦁 Lion Health \(myLion.health)")

myCheetah.run()
myCheetah.run()

myCheetah.displayHealth()

myLion.run()
myLion.run()
myLion.run()

myLion.growl()














