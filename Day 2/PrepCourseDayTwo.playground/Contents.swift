import Foundation
import UIKit
import PlaygroundSupport

/// Welcome back! What did we cover yesterday? Constants, Variables, and basic data types.

/// Today we are going to learn more about Types! We will cover some non basic types, what type safety is, and the wonderful world of Operators. Spoiler: There are a lot of operators. After operators we will jump into conditionals, control flow, and a deeper look into those basic data types from yesterday.

/// Lets jump into it.  Keeping up with the Wizarding World theme from yesterday what type would you use to represent the first day of classes?

var classStartDate: Date
/// What, what?! Swift has a built in type just for dates?! Cool, huh? Let's look at what a Date type can do.
// Open the documentation with the students, show them how to option-click to see the quick preview, and command click to see the full documentation. This would be a good time to showcase Dash, if you want.


/// Now, what data type would we want to use for the house crest?
/* Hopefully the students suggest using an Image. Ask them to google what type to use for an image. UIImage, wont show up yet. Make sure you only have foundation imported, and give it a try. Show them that it wont work.`*/
/* Ask the students why its not working*/
/// We saw on google that there is a swift type called UIImage, but the compiler is not autocompleting that, why is that?
/// Tell them that Swift has something called Frameworks
///https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPFrameworks/Concepts/WhatAreFrameworks.html
///
/// A framework is a hierarchical directory that encapsulates shared resources, such as a dynamic shared library, nib files, image files, localized strings, header files, and reference documentation in a single package. Multiple applications can use all of these resources simultaneously. The system loads them into memory as needed and shares the one copy of the resource among all applications whenever possible. Frameworks will give you access to many abilities some may consider to be... unnatural.
/// So we import UIKit and now we have access to create an Image. Here's a cool note, some frameworks are built on the foundation of others. UIKIt has the Foundation framework inside it, so we can delete this line `Import Foundation` because it’s repeated code.
let hogwartsCrest: UIImage
/// Okay, well now that we've created these properties.. Do they have any values? What do you think I mean?

/// We use an = to assign a value to something. The = sign is called the assignment operator.
// Vocab: Simple assignment operator, Assigns values from right side operands to left side operand
///While we are at it, let's define what an operator is -- because we are going to use that term pretty often
// Vocab: Operators are special symbols (characters) that carry out operations on operands (variables and values). Some basic operations includes assigning, changing, combining and checking values


/// If we write
let bestHouse: String = "Slytherin"
/// This simple line is doing two things. It initializes and assigns the value. Initializing is something we will go more in depth on later in the course, but for now, think of it as creating it. We have assigned the constant `bestHouse` the value of "Slytherin"
/// Lets assign some values to the other properties we made, classStartDate and Hogwarts crest
classStartDate = Date()
/// classStartDate has been initialized and given the value of the specific point in time this runs.
classStartDate = DateComponents(calendar: .autoupdatingCurrent, timeZone: .current, year: 2020, month: 9, day: 1).date!
/// The line above updates the value of classStartDate to this more specific point in time.
/// What if I wanted to set the date to a string that says "September 1st" What happens?

//classStartDate = "September 1st"
// uncomment and show the error

/// We can't assign a string to something that is already a Date object. This is because Swift is a type safe language; which means if a part of your code expects a String, you can't pass it an Int by mistake. As Swift is type-safe, it performs type-checks when compiling your code and flags any mismatched types as errors. But, how does it know that Type classStart date is? In line 46 we have not said that it is a Date...

/// This is because of something called Type inference - Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide. Swift uses type inference to work out the appropriate type as follows.

/// At this point we've discussed two really major things. We've talked about the existence of operators and explored the `assignment operator`. We Talked about type safety and type inference in swift. What I'd like from all of you is to create a new playground called Vocab and add those three to the vocab sheet. I'll post the definitions again for you here.

// Vocab: Simple Assignment operator - Assigns values from right side operands to left side operand
// Vocab: Type Safety - Type safety is the extent to which a programming language discourages or prevents type errors. A type error is erroneous or undesirable program behaviour caused by a discrepancy between differing data types
// Vocab: Type Inference - Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.

/// Remember that house crest we were working on, let's add some code to see it in action. Now, there is going to be a lot here so don't be overwhelmed. We won't go in depth on how this is all working, just know that in 14 weeks this code will look like child's play. I'll send you the code on Discord now.
// Don't Forget to import Playground support. This is just so they can see the image under the code.

let view = UIView(frame: CGRect(x: 0, y: 0, width: 916, height: 611))
view.backgroundColor = .black
let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 916, height: 611))
view.addSubview(imageView)

let test = UIImage(named: "HogwartsBW")
imageView.image = test!
imageView.contentMode = .scaleAspectFit

PlaygroundPage.current.liveView = view
PlaygroundPage.current.liveView

/// Damn, look at all those assignment operators. Lets walk through it. Remember, all you need to know and care about is line 65. There are more operators than the =, or the simple assignment operator. Let's look into the wonder world of arithmetic operators.  These operators are used to perform mathematical operations that include multiplication, division, addition and subtraction etc. These operators fall into the category of `binary operators` operators that take two operands.

/// Add these to your vocab sheet
/*
 Basic arithmetic
 +    Addition (also used for string concatenation)
 -    Subtraction Operator
 *    Multiplication Operator
 /    Division Operator
 %    Remainder Operator
 */

/// let's practice them in code

var sum = 100
sum + 200

sum - 80
sum * 3

sum / 4

sum % 25

/// you can even use the sum operator to add strings together! This is called String concatenation
let name = "Karl"
let status = " is awesome"
name + status
/// Does that math make sense to you? The reason why each mathematical operation is not updating the value is because we are never assigned to results. Wild huh! What happens if we combine the arithmetic operators with the basic assignment operator? Here's what those operators look like. Add them to the vocab sheet
/*
 Basic assignment operators
 Assignment operators are used in swift to assign values to a property (variable/constant).
 =    Simple assignment operator, Assigns values from right side operands to left side operand
 +=    Add AND assignment operator, It adds right operand to the left operand and assigns the result to left operand
 -=    Subtract AND assignment operator, It subtracts right operand from the left operand and assigns the result to left operand
 *=    Multiply AND assignment operator, It multiplies right operand with the left operand and assigns the result to left operand
 /=    Divide AND assignment operator, It divides left operand with the right operand and assigns the result to left operand
 %=    Modulus AND assignment operator, It takes modulus using two operands and assigns the result to left operand
*/
/// Now let's write some code and practice all the assignment operators

var number = 1
number += 2
//3
number -= 1
//2
number *= 10
//20
number /= 5
//4
number %= 2
//0

/// All of the examples we've used are what's called Unary operators. Unary operates on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!)
var multiplication = 10 * 100
/// The line we just wrote is an example of a `Binary Operator`
// Vocab: Binary operators operate on two targets (such as 2 + 3) and are infixed because they appear in between their two targets.
let x = 100
let y = 10
let math = x / y
var date = Date()
date - 5252002
/// These operators may even work on different types

/// Now let's look into comparison operators.
// Vocab:Comparison operators - These operators allow you to compare two values. Each of the comparison operators returns a Bool value to indicate whether or not the statement is true. Swift supports following types of comparison operators:

/*
 Swift Comparison Operators
 ==    equal to
 !=    not equal to
 >    greater than
 <    less than
 >=    greater than or equal to
 <=    less than or equal to
*/
/// Lets see them in action
5 == 3
// false
5 != 3
// true. The ! means NOT
5 > 3
// true
5 < 3
// false
5 >= 5
// true
4 <= 5
// true

/// Continuing down the operator path we have Logical operators.
// Vocab: logical operators -These operators are used with Boolean (logical) values and returns a Boolean value. It is mainly used to control program flow with if else, while, or some other control statement.
    // Vocab: || Logical-OR; if either of the boolean expression is true
    // Vocab: && Logical-And; true if all boolean expressions are true    false && true is evaluated to false

/// Lets see these in action! What does this comment say?
// 2b !! !2b
/// To be or not be, well, that is the question.
///
/// Coding jokes aside, I know that doesnt make sense yet. I think we need to jump into the world of conditionals and logic to better understand these operators.
///

/// Working with conditionals
/*Sometimes you want code to execute only if a certain condition is true, and in Swift that is represented primarily by the if and else statements. You give Swift a condition to check, then a block of code to execute if that condition is true.*/
/*If, else if, else*/

var houseCupWinners = "Slytherin"
var nerds = "Ravenclaw"
var loyal = "Hufflepuff"
var braveOrWhatever = "Gryffindor"

if houseCupWinners == "Slytherin" {
    print("Hogwarts has been returned to glory!")
} else {
    print("I mean.. who cares about the house cup anyway.")
}
/// You would use an `if else` if there were only two options. It's either this way or it's not.

/// Not everything can be solved in a my way or the highway viewpoint. If there are more than two options you would use an `else if
var yourHouse = "Slytherin"

if yourHouse == "Slytherin" {
    print("Slytherin values ambition, cunning, leadership, and resourcefulness. The house mascot of Slytherin is the serpent, and the house colours are green and silver.")
} else if yourHouse == "Gryffindor" {
    print("Gryffindor values courage, bravery, nerve, and chivalry. Gryffindor's mascot is the lion, and its colours are scarlet red and gold (maroon and gold on the ties and scarves)")
} else if yourHouse == "Ravenclaw" {
    print("Ravenclaw values intelligence, learning, wisdom and wit. The house mascot is an eagle and the house colours are blue and bronze")
} else if yourHouse == "Hufflepuff" {
    print("Hufflepuff values hard work, patience, justice, and loyalty. The house mascot is the badger, and canary yellow and black")
} else {
    print("Bruh, what school are you in?")
}

/// In this example we used a simple else at the end to handle all other unforeseen options. Take some time and write your own ` if, else` and `if else` statements.
// Take some time and showcase what the students have done. This should take about 30 mins.

/// We can use conditionals with those logical operators as well! Lets try it

if bestHouse == "Slytherin" || bestHouse == "Ravenclaw" {
    print("Hogwarts is in good hands")
} else {
    print("We're doomed!")
}
/// Ask the students if they can come up with an `or` statement to showcase.
var headOfHouse = "Slugworm"
/// Let's look at what an and would look like
if bestHouse == "Slytherin" && headOfHouse == "Slugworm" {
    print("Snape is a cry baby")
}

if bestHouse == "Slytherin" && headOfHouse == "Snape" {
    print("Bet Snape is still a potion master")
}


/// When using these types of conditional statements it's very important to think about the order in which they will be executed. We call this Control Flow.
/// Ask the students to google `Control Flow` and to let you know what they think that means? You will explore control flow more in depth but let's look at one of the most challenging coding challenges faced by junior developers. Fizz Buzz. Has anyone heard of fizzbuzz before? The goal is to write a block of code that will print every number from 1 to 100 but replacing multiples of 3 with Fizz, multiples of 5 with Buzz, and multiples of 3 and 5 with fizzbuzz. This coding challenge is designed to test your mastery of control flow. Let's build it together.

// Vocab: Control flow -In computer science, control flow is the order in which individual statements, instructions or function calls of an imperative program are executed or evaluated.

/// There is also one final operator to cover; the basic range operators. A Range operator will create a range of numbers from whatever you want to whatever you want. Lets create a range of numbers 1 thru 100

var closeRange = 1...100
/// This is called a closed range
/// What if we wanted the range to stop right before 100?
var halfOpenRange = 1..<100
/// What are some examples of time when you'd want to use a range in code?
// Walk through this step by step. This challenge will encompass the majority of what we've covered today

//let rangeTo100 = 1...100
//for number in rangeTo100 {
//    if number % 3 == 0 && number % 5 == 0 {
//        print("Devmountain")
//    } else if number % 3 == 0 {
//        print("Dev")
//    } else if number % 5 == 0 {
//        print("Mountain")
//    } else {
//        print(number)
//    }
//}

