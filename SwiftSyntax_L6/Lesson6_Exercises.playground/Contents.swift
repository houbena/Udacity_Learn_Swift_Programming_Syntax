//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
    var lengthInCm: Double
}

class Animal {
    let species: String
    let tail: Tail
    
    init(species: String, tailLength: Double){
        self.species = species
        self.tail = Tail(lengthInCm: tailLength)
    }
}
//: __1b.__
//: Instantiate and initialize a few different Animals.

var fox = Animal(species: "dogs", tailLength: 100 )

//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
    let variety: String
    var varieties = ["A", "B"]
    
    // Softness is rated on a scale from 1 to 5, with 5 being the softest
    var softness: Int
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    func ripen()-> String {
        self.softness++
        if self.softness >= 100{
            return "Peach is ripe"
        }else{
            return "Peach is not ripe"
        }
    }
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
var myPeach = Peach(variety: "A", softness: 4)
myPeach.ripen()
myPeach.softness
//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
//var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    
    var cuddlability: Int{
        get {
            return self.fluffiness * self.droolFactor
        }
    }
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(wheeledVehicle: String)-> String {
        return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
    }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
var myDog = FluffyDog(name: "dagdoug", fluffiness: 2, droolFactor: 3)
myDog.cuddlability
myDog.chase("car")
//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
    case Small
    case Medium
    case Large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    static let size = Size.Large
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    func bark()->String{
        switch (size){
        case .Small:
            return "Small"
        case .Medium:
            return "Medium"
        case .Large:
            return "Large"
        }
    }
    
    class func speak()->String{
        switch (size){
        case .Small:
            return "Small"
        case .Medium:
            return "Medium"
        case .Large:
            return "Large"
        }
    }
}
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
var myDogg = ChattyDog(name: "dogg", breed: "any breed", size: .Medium)
myDogg.bark()
//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.
ChattyDog.speak()
//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
    case Poor, Fair, Good, Excellent
}

enum NaturalDisaster {
    case Earthquake
    case Wildfire
    case Hurricane
}

class House {
    let numberOfBedrooms: Int
    let location: Quality
    
    var worthyOfAnOffer: Bool{
        get{
            
            if numberOfBedrooms >= 2 && (location == .Good || location == .Excellent) {
                return true
            } else {
                return false
            }
        }
    }
 
    init(numberOfBedrooms: Int, location: Quality){
        self.numberOfBedrooms = numberOfBedrooms
        self.location = location
    }
    
    func willStayStanding(naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .Earthquake:
            return true
        case .Wildfire:
            return true
        case .Hurricane:
            return false
        }
    }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
var myHouse = House(numberOfBedrooms: 2, location: .Good)
myHouse.willStayStanding(NaturalDisaster.Earthquake)
myHouse.worthyOfAnOffer
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






