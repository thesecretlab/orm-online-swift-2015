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
    
    private var speed : Int
    
    init (speed : Int) {
        self.speed = speed
    }
    
    convenience init() {
        self.init(speed: 60)
    }
    
    deinit {
        
    }
    
}

let myCar = Car(speed: 45)
myCar.speed = 45

var myOtherCar = myCar
myOtherCar.speed = 60
myCar.speed


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







