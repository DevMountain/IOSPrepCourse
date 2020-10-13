import UIKit

/// Welcome back! Today we will learn about the differet objects in swift, how they work, and how to create our own.
///
/// We have learned about Types already, but OBJECTS are different from TYPES. Every Type is a kind of Object (ex: the String Type is a Struct Object). So what kind of Objects are there in swift?
///
/// There are 3 concrete Objects we will use often: Class, Struct, and Enum.
/// Let's see an Object in action. Below is the standard String that comes with evey new playgroud. Option click on the NAME of the string (str), select String from the dialog box to navigate to the Documentation for String. In the Documentation, we can see the line  `struct String`, which tells us that String is a Struct Object.
/// You will explore the differences between Classes, Structs, and Enums later on in the course, but for today we will briefly go into the differences between Classes and Structs, and then take a deeper dive into Classes.


var str = "Hello, playground"

/// With the idea of Objects in mind, let's create our own! Let's create a Person object.
/// First we will define our object `class`, followed by our object name `Wizard`, and open the scope of the object `{ } `
/// Once that is done, you can add some properties that you think this object should have.
/// Properties are pieces of associated information, such as a first name, last name. When creating custom objects, more often than not we don't want to assign a value to the properties. We will define their types and assign values using an `initializer`
/// Add in the lines `let name: String` and `let house: String` to the Wizard object. You'll notice that you get a compiler error that says `Class 'Wizard' has no initializers`.
/// Classes require us to define an initializer for them. We will dive into Initializers in the next section.
/// Refer to the below block of code to finish writing your Person object

class Wizard {
    let name: String
    let house: String
    
    init(name: String, house: String) {
        self.name = name
        self.house = house
    }
}

/// Writing Structs is similar to writing classes, however Structs give you an initializer for free.
/// Lets see this in practice by writting a struct `Pet` object. Our object will be `struct` and object name will be `Pet`.
/// Add a name property to the struct as well.

struct Pet {
    let name: String
}

/// You'll notice that there is no compiler warnings here, even though we have not expicitly defined an initializer for the Pet object.
/// We will primarily use `Classes` for projects to get comfortable with what an initializer is and does.
///
/// Let's dive deeper into an `initalizer`
/// You will notice that the initializer can have parameters. The Wizard initializer takes in two parameters, a `name` and a `house`, which we then use to assign `self.name` and `self.house` to the parameter values.
/// If we were to delete the `self.name = name` line we would see a compiler error: `Return from initializer without initializing all stored properties`. We need to provide a value to all the required properites to be able to successfully initialize an object. This leads us to our next topic.
///
/// Initizlizing an object creates an `instance` of an objects. Lots of new vocabulary today... What is an instance!?
/// Let's refer back to the `str` at the top of this file. That is an `instance` of a `String`.
/// Let's use our objects to create `instances` using their `initializers`

let wizard = Wizard(name: "Harry Potter", house: "Gryffindor")
let pet = Pet(name: "Hedwig")

/// We now have an instance of a Wizard and a pet object. But what does having an instance do for us?
/// Types will often have methods (functions) and properties that require an instance to access. These are type-safe methods and properties, aka intance methods and properites.
/// To see this in practice let's revisit our trusty `str` String instance.
/// String has many, many properties and methods built into it that we can interact with, such as `.isEmpty`

let stringContainsLetters = str.isEmpty

/// In this use case, `.isEmpty` is a Boolean property that tells us if a string contains any characters. Option click on `.isEmpty` for more information.
/// Let's use a method, `.removeAll()`, that's also built into String and print the before and after using `.isEmpty`

print(str.isEmpty)
str.removeAll()
print(str.isEmpty)

/// Can we utilize these same tools on our custom objects? Of course.
/// Currently our objects only have properties, but we can interact with them the same way as we did with `.isEmpty`
/// Print out the name of the Wizard and the Pet instances

print(wizard.name)
print(pet.name)

/// Do you always need an instance of an object to call properties or methods? Not always.
/// Some Types will have type methods and/or properties. These are accessible without an instance of an object. These are marked `static` before the property to declare them as non-instance typed methods or properties.
/// We will be using these in our next section My First App

/// Before we jump into the app construction, lets explore initializers an objects a little bit more.
/// Create a new object called `House`
/// Give it two properties, a name of type String and a wizards array of Wizards
/// A house can exist without having wizards, so how can we initialize it without needing to supply a value for the wizards array?
/// We can provide a default value of an empty array upon initialization `wizards: [Wizard] = []`
/// This allows us to call the initializer in TWO DIFFERENT WAYS, if we do not provide a value for the `wizards` parameter upon initialization the object will default to the empty array value.

class House {
    let name: String
    var wizards: [Wizard]
    
    init(name: String, wizards: [Wizard] = []) {
        self.name = name
        self.wizards = wizards
    }
}

let gryffindor = House(name: "Gryffindor", wizards: [wizard])
let slytherin = House(name: "Slytherin")

/// Another powerful tool in the Swift language is `Optionals`
/// An optional is an instance that either contains a value and that value is `X`, or there is not a value at all. It has two possible states, some or none. Some meaning it has a value of `X` and None meaning it it `nil`.
/// `Nil` is the absence of any value.
/// How do you use optionals and recogize something that is an optional?
/// You want to use optionals in situations where a value may be absent.
/// Swift uses the `?` to indicate anything that is optional
/// Lets put this into practice

var newString: String?
var optionalWizard: Wizard?
optionalWizard = wizard

/// We've declared a variable named `newString` that is of type `String` and is marked `Optional` by the `?`
/// Print the value, you will have a compiler warning (this is not an error - just a warning).

print(newString)

/// The console shows us `nil` meaning that this variable has no value.
/// You can set this value the same way as any other variable.
/// But how do you safely interact with optionals? How can we silence that warning?
/// The answer is to `unwrap` your optionals, and there are several ways for us to do this. Seven ways, infact. Lets talk about some of the more common ways that we will use.

/// The least safe and most easy is Force unwrapping
/// Force unwrapping WILL CRASH YOUR APP IF NIL IS ENCOUNTERED. It is highly advised that you safely unwrap your optionals. There are very few occasions in which force unwrapping is the right way to go.
newString = "Force"
print(newString!)

/// Conditional
/// We can check if there is a value by using an `if` statement, however this does not unwrap the optional. We can assume that `newString` has a value if we make it into the body of the `if` statement and can "safely" force unwrap `newString`.
if newString != nil {
    print(newString!)
}


/// Optional binding
/// To avoid force unwrapping, we can optionally bind the `newString` property to a new temporary property.
/// Using an `if let` we can check to see if `newString` has a value, assign its value to the `unwrappedString` constant, and then print the value. This is `binding` the value of the `optional` to the new property defined in the `if let` statement.
/// Ta-da, no compliner warning! And we safely unwrapped our optional.
newString = "Conditional"
if let unwrappedString = newString {
    print(unwrappedString)
}

/// Some more practice with our optionalWizard
if let unwrappedWizard = optionalWizard {
    print(unwrappedWizard.name)
}

/// Let's see what happens when we try to optionally bind something that is in fact nil.
/// We do not make it into the body of the `if let` statement, meaning `newString` has no value to bind to the `unwrappedString` property.
newString = nil
if let unwrappedString = newString {
    print(unwrappedString)
}

optionalWizard = nil
if let unwrappedWizard = optionalWizard {
    print(unwrappedWizard)
}
optionalWizard = wizard

/// What can optional binding let us do in a practice?
/// We can check for a value in a control flow to determine user intent for a specific flow.
/// For example, we can create a new Wizard object and assign it to our optionalWizard if it is nil.
/// This concept will be utilized heavily in week one, HINT HINT
optionalWizard = nil
if let unwrappedWizard = optionalWizard {
    print("You're a wizard \(unwrappedWizard.name)")
} else {
    optionalWizard = Wizard(name: "Ron Weasley", house: "Gryffindor")
}

/// Guard to bind the optional value to a new property
/// Using `guard let` is very similar to using a `conditional`, however a `guard` requires a fallthorugh statement, essentially what will happen if it is unable to unwrap the optional. Guarding is only doable during some sort of computation. We'll Use a function to demo this one.
/// If the optional has no value, we will enter the guard body and hit the return statement.

newString = "Guard"
func unwrapOptionalString() {
    guard let unwrappedString = newString else {
        print("This string does not exist")
        return
    }
    print(unwrappedString)
}
unwrapOptionalString()

/// Some more practice with our optionalWizard
func unwrapWizardWithGuard() {
    guard let unwrappedWizard = optionalWizard else {
        print("Not a wizard!")
        return
    }
    print("You're a wizard \(unwrappedWizard.name)")
}

/// Let's see what happens when we guard unwrap something that is in-fact nil.
/// We will enter the body of the guard statement and return out of the function without continuing further.
newString = nil
unwrapOptionalString()

optionalWizard = nil
unwrapWizardWithGuard()

/// Optional chaining.
/// Optional chaining is a process for interaction with properties, methods, etc on an object that might be nil. If the optional contains a value, the property or method call will succeed. If the optional is nil, the property or method call will return nil.
/// To chain the optional, you add a `?` after the name of the property and before the `.` of whatever property or method you are accessing on it.
/// You can see from the below example that the `.isEmpty` property is returns false, indicating that `newString` has a value. However, when we set `newString` to nil, `.isEmpty` instead returns `nil` NOT `true`.
/// This is because `newString` HAS NO VALUE and therefore cannot be empty.
newString = "Chaining"
newString?.isEmpty
newString = nil
newString?.isEmpty

/// We can also provide a default value incase the optional is nil with nil-coalesing
/// If the optional does not have a value then it will use the provided default value
/// A good example of a use case for this would be if you absolutely NEED a value but cant guarantee that the optional value will be there when you need it. So you can provide a default value to fallback on.
print(newString ?? "No value")
