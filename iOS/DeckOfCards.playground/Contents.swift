//: Playground - noun: a place where people can play
// Cleland

import UIKit

struct Card {
    var value: String
    var suit: String
    var numerical_value: Int
    func show() {
        print(value, "of" , suit, numerical_value)
    }
}

class Deck {
    var cards = [Card]()
    
    init() {
        self.reset()
    }
    
    func deal() -> Card? {
        if self.cards.count > 0 {
            return self.cards.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func reset() {
        let values = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
        let suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
        self.cards = [Card]()
        for suit in suits {
            for i in 0...12 {
                let newCard = Card(value: values[i], suit: suit, numerical_value: i+1)
                self.cards.append(newCard)
            }
        }
    }
    
    func shuffle() {
        for i in stride(from: self.cards.count-1, to: 0, by: -1) {
            let swapcardindex = Int(arc4random_uniform(UInt32(i)))
            let temp = self.cards[i]
            self.cards[i] = self.cards[swapcardindex]
            self.cards[swapcardindex] = temp
        }
    }
    
    func show() {
        for card in self.cards {
            card.show()
        }
    }
}

class Player {
    var name: String
    var hand: [Card]
    
    init(name: String) {
        self.name = name
        self.hand = [Card]()
    }
    
    func draw(deck: Deck) -> Card? {
        if let drawnCard = deck.deal() {
            self.hand.append(drawnCard)
            return drawnCard
        } else {
            return nil
        }
    }
    
    func discard(suit: String, value: String) -> Bool {
        for i in 0...self.hand.count-1 {
            if (self.hand[i].suit == suit && self.hand[i].value == value) {
                self.hand.remove(at: i)
                return true
            }
        }
        return false
    }
    
    func show() {
        for card in self.hand {
            card.show()
        }
    }
}


let newDeck = Deck()

print("new deck was made")

newDeck.show()
newDeck.shuffle()
print("shuffled")
newDeck.show()

let dacle = Player(name: "Dacle")

dacle.draw(deck: newDeck)
dacle.draw(deck: newDeck)

print("👽👽👽👽 My Hand 👽👽👽👽")

dacle.show()








