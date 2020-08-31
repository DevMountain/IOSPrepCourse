import UIKit

/// Welcome to Hogwarts! Britain's premier school for witchcraft and wizardry! Before we can sort you into your house we will need some basic information

/// First name, last name, age
/// Let's start with a first name! What type do you think is best for a name? A String! Yeah! In computer programming, a string is traditionally a sequence of characters.
/*Vocab: String - In computer programming, a string is traditionally a sequence of characters*/
let firstName: String
/// Break this down step by step. Let means constant. What's a constant?
/*let is the keyword for a constant, typically, if you are not being chased by the feds, it doesn't change.*/
/// Ask the students to name other items that would be constants
/// Compare let and var.
/* firstName is the name of this constant*/
/// firstName is the name of this constant. To a great developer naming is very important. Because you are just starting out, we recommend that you have your names be very verbose. As you grow you can make them more abstract. Notice the casing of this name, does anyone remember what the casing is called? Lower Camel Case!
/// Demonstrate UpperCamelCase, lowerCamelCase, and snake_case
/*String is the type.*/
/// What other properties for a person would best be represented by the String type? Is String the best type for everything? Hopefully someone mentioned the last name, if not lets add it now. Ask a student to tell you what to type
let lastName: String
/// Great work! Now, let's think about someone's age. How does someone's age differ from their name? It changes, each year it increases -- so lets make it a var. What type would be best for a person's age? Yeah! An int! A Int is short for "integer,"; and is a fundamental type built into the compiler and used to define numeric variables holding whole numbers. Stress the WHOLE number point. Integers are whole numbers with no fractional component, such as 42 and -23 Other data types include float and double. Floating-point numbers are numbers with a fractional component, such as 3.14159, 0.1, and -273.15. Floating-point types can represent a much wider range of values than integer types, and can store numbers that are much larger or smaller than can be stored in an Int. Swift provides two signed floating-point number types. Double represents a 64-bit floating-point number. Float represents a 32-bit floating-point number. Because of this, a double can grow up to 15 decimal points long and maintain it's accuracy. A float can only grow to 7 points long.
/*Vocab: Int - Integers are whole numbers with no fractional component
    Float: Floating point number, represents a 32-bit number that may have a fractional component. 1.0, 1.25
    Double: Floating point number. representing a 64-bit number that may have fractional components.
 */
var age: Int
let yearHogwartsBuilt: Int
let wandLengthOfTheDarkLord: Double
/* We do a double here becuase our app will be designed for 64 bit processsers. He who must not be named had a wand with a length of 13 1/2 */
/// Explain that even if we didn't know the exact length of The Dark Lord's wand, if we know that wands could have a decimal value, we still need mark them as a Double, not an int, just to cover that possibility. A 13" wand would be represented as 13.0

/// Now there are two very important properties we need to know and define. Are you a death eater, and are you a mud-blood. As a pure-blood myself these are super important. What basic data type works best with these?
var deathEater: Bool
/// Yeah a Bool! A Bool, or Boolen, is a value type whose instances are either true or false. Bool represents Boolean values in Swift.
/* Vocab: Bool - A value type whose instances are either true or false.*/
/// Would this be a var or a let? Do you think that people can change and no longer be deathEaters? Var! Exactly! Snape's defection is what brought about the defeat of The Dark Lord!
let pureBlood: Bool
/// Would this be a var or a let?  No matter how hard I try, you can't change who your parents are.
