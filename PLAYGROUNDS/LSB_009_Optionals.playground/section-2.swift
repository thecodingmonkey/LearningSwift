import UIKit


/*---------------------/
//  Optionals
//  Why use implicitly unwrapped and lazy properites:
//    http://www.scottlogic.com/blog/2014/11/20/swift-initialisation.html
/---------------------*/

// var aVar: String = nil <-- Not allowed
var anotherVar: String? = nil
var word: String
word = "sdkfj"
var copied = word

var anOptional: String? = "hi"
var aCopy = anOptional!

var anotherWord: String! = "hello"
var anotherCopy: String = anotherWord

anotherWord = nil
// anotherCopy = anotherWord <--- Not allowed



var myName: String? // = "Kyle" // to make it have a value
if myName == nil {
  "no name here"
} else {
  "my name is \(myName)"
}

let scores = ["kyle": 111, "newton": 80]
let kylesScore : Int? = scores["kyle"]

if kylesScore != nil {
  // Must use `!` to force unwrap to a non-optional type:
  "Kyle's score is \(kylesScore!)"
}


// Optional Binding...
if let score = scores["newton"] {
  // So, `!` is not required:
  "Newton's score is \(score)"
} else {
  "Score not found."
}


// SIDENOTE: ??
let maybeInt : Int? = nil
let aNumber = maybeInt ?? 10
"Number is \(aNumber)."


let defaultName : () -> String = {
  "Expensive Computation"
  return "Default Name"
}
let maybeName : String? = nil
let aName = maybeName ?? defaultName()
println("Number is \(aName).")
defaultName()


// Optional Chaining
// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html
//
struct Address {
  var state: String?
}
struct Person {
  var address: Address?
}
struct Order {
  var person: Person?
}
var order = Order(person: Person(address: Address(state: "CA")))
let state = order.person?.address?.state
if state != nil {
  "Order is from \(state!)."
}
if let orderState = order.person?.address?.state {
  "Order is from \(orderState)."
}

