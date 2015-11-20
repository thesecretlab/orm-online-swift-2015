//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myNumber = 123

let myString = "Hello"

var myOptionalNumber : Int?

myOptionalNumber = 123
//myOptionalNumber = nil

var desc = myOptionalNumber!.description

if myString == "Hello" {
    print("The strings are equal")
}

if let theNumber = myOptionalNumber {
    
}

var arrayOfNumbers = [1,2,3]

for number in arrayOfNumbers {
    print(number)
}

var dictionaryOfNumbersAndStrings = ["one":1, "two":2]

arrayOfNumbers[0]
var dictionaryValue = dictionaryOfNumbersAndStrings["one"]

for entry in dictionaryOfNumbersAndStrings {
    entry.1
}

var myTuple = (numberOfSheep:1,numberOfGoats:2,"hi")

myTuple.numberOfGoats

// Unicode and emoji!
let è = "foo"

let 🐱 = "cat"
let 🐭 = "mouse"

🐱==🐭


//: Sets




/* 

sdsd

/* foo */

*/
var mySet : Set<Int> = [1,1,2]

func test() {
    
    
    guard myNumber == 123 else {
        return
    }
    
    guard let theNumber = myOptionalNumber else {
        return
    }
    
    
}

switch myNumber {
case 0:
    print("myNumber is zero")
case 1..<100:
    print("myNumber is between 1 and 100")
default:
    print("myNumber is something else")
}

func add(number number1 : Int, toOtherNumber otherNumber : Int) -> Int {
    return number1 + otherNumber
}

add(number: 123, toOtherNumber: 456)

func doSomethingToANumber(number : Int, thingToDo: Int -> Int) -> Int {
    
    return thingToDo(number)
    
}

func addThree(number:Int) -> Int {
    return number+3
}

doSomethingToANumber(42, thingToDo: addThree)

func makeAdder(amount : Int) -> Int -> Int {
    func theAdder(thingToAddTo : Int) -> Int {
        return thingToAddTo + amount
    }
    
    return theAdder
}

let addTwo = makeAdder(2)

addTwo(2)

let myFunc = { (number : Int) -> Int in
    return 2+2
}

arrayOfNumbers.sort() {
    $0 > $1
}

/*

doSomething({ code goes here })

runCodeInFiveSeconds() {

}

*/

myFunc(1)


extension NSObject {
    func foo() -> String {
        return "yes"
    }
}

let obj = NSObject()
obj.foo()


class Car {
    
    private var speedKPH : Int {
        willSet {
            print("About to change to \(newValue) from \(speedKPH)")
            
        }
        didSet {
            print ("Changed from \(oldValue) to \(speedKPH)")
        }
    }
    
    // Computed properties
    var speedMPH : Float {
        get {
            return Float(speedKPH) * 0.62
        }
        set {
            speedKPH = Int(newValue * 1.61)
        }
    }
    
    init (speed : Int) {
        self.speedKPH = speed
    }
    
    convenience init() {
        self.init(speed: 60)
    }
    
    deinit {
        
    }
    
}


let myCar = Car(speed: 45)
myCar.speedKPH = 45

var myOtherCar = myCar
myOtherCar.speedKPH = 60
myCar.speedKPH

myCar.speedMPH = 40
myCar.speedKPH

struct Name {
    var firstName : String
    var secondName : String
}

var myName = Name(firstName: "Jon", secondName: "Manning")
var myOtherName = myName
myOtherName.firstName = "John"
myOtherName.firstName
myName.firstName

extension String {
    func reverse() -> String {
        return String(self.characters.reverse())
    }
}

"Hello".reverse()

// Error handling
var data = "My Text".dataUsingEncoding(NSUTF8StringEncoding)
try? data?.writeToFile("/invalid/path", options: NSDataWritingOptions.DataWritingAtomic)

do {
    var data = "My Text".dataUsingEncoding(NSUTF8StringEncoding)

    try data?.writeToFile("/invalid/path", options: NSDataWritingOptions.DataWritingAtomic)
} catch var error as NSError {
    print("There was an error!")
}

// Defer
func deferExample() -> UIImage {
    
    UIGraphicsBeginImageContext(CGSize(width: 100, height: 100))
    
    defer {
        UIGraphicsEndImageContext()
    }
    
    
    let myImage = UIGraphicsGetImageFromCurrentImageContext()
    
    
    
    return myImage
    
}

let temporaryMemory = malloc(100)
defer {
    free(temporaryMemory)
}

// Use temporaryMemory

// Protocols

protocol Driveable {
    func driveTo(destination:String)
    
}

class Motorcycle : Driveable {
    
    func driveTo(destination: String) {
        print("Motorcycle driving to \(destination)")
    }
    
}

extension Car : Driveable {
    func driveTo(destination: String) {
        print("Car driving to \(destination)")
    }
}

// Generics

let setOfNumbers : Set<Int> 

class Tree<T : Equatable> {
    
    var data : T?
    
    var children : [Tree<T>] = []
    
    func addChild(newValue : T) -> Tree<T> {
        let newNode = Tree<T>()
        newNode.data = newValue
        self.children.append(newNode)
        return newNode
    }
    
    func findNode(thingToFind : T) -> Tree<T>? {
        if data == thingToFind {
            return self
        }
        
        for child in children {
            if let result = child.findNode(thingToFind) {
                return result
            }
        }
        
        return nil
    }
    
}

let intTree = Tree<Int>()
intTree.data = 5
intTree.addChild(2)
intTree.addChild(6)


//    5
//   / \
//  2   6

intTree.findNode(8)

let stringTree = Tree<String>()

// Defining collection types
let myDictionaryOfStrings : [Int:String]

// Enums

enum CompassPoint {
    case North
    case South
    case East
    case West
}

var myDirection : CompassPoint

myDirection = .North

enum Planet : Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    
}

var myPlanet = Planet.Mars

var myOtherPlanet = Planet(rawValue: 9)

myPlanet.rawValue

enum Beverage {
    case Tea(milk: Bool, sugars:Int)
    case Coffee(milk:Bool, sugars:Int)
    case Soda(name:String)
    
}

// Loop without caring about the specific item
for _ in [1,2,3,5] {
    print("Found an item")
}

// Discard
_ = 23

var thisMorningsDrink = Beverage.Coffee(milk: false, sugars: 9)

switch thisMorningsDrink {
case .Coffee(false,_):
    print("It's black coffee")
    
case .Coffee:
    print("It's coffee")
case .Tea:
    ()
case .Soda:
    ()
    
}

// + - / *

let point1 = CGPoint(x: 2, y: 2)
let point2 = CGPoint(x: 3, y: 3)

func + (left:CGPoint, right:CGPoint) -> CGPoint {
    return CGPoint(x: left.x+right.x,
        y: left.y+right.y)
}

let point3 = point1 + point2

infix operator ** { associativity left precedence 160 }

func ** (left: Double, right: Double) -> Double {
    return pow(left, right)
}

9**3

// Literal convertibles
/*extension String : IntegerLiteralConvertible {
    init(integerLiteral value: Self.IntegerLiteralType) {
        self = value.description
    }
}

var myStringFromAnInteger : String = 42 */



