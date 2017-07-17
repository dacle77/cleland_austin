//: Playground - noun: a place where people can play

import UIKit

class Person {
    var species = "Human"
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func speak() {
        print("Hello I am a \(self.species) and my name is \(self.name)")
    }
}

class Developer: Person {
    var favoriteLanguage: String
    
    init(name: String, favoriteLanguage: String) {
        self.favoriteLanguage = favoriteLanguage
        super.init(name: name)
    }
    
    override func speak() {
        print("Hello I am a Developer! My name is \(self.name)")
    }
}

var myDeveloper: Developer = Developer(name: "Dacle", favoriteLanguage: "Swift")
var myPerson: Person = Person(name: "Dacle")

myDeveloper.speak()
myPerson.speak()


///////////////////////////////////////////////////////////////////////
//                ***>>>     TEST AREA     <<<***                    //
///////////////////////////////////////////////////////////////////////
