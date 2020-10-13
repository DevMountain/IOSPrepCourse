import UIKit

/// Welcome back! Yesterday we looked into loops, and their various types. We did a deep dive into `Control Flow` and also learned how to iterate through a collection -- commonly referred to as a `for in` loop. Today we will take a look into collection types and their various uses. We will learn how to create a collection type, how to add and subtract values from it, and how to use collection types to their full advantage. Following that we will build our very first app together and cover some common errors you will face.

///Lets jump in and start with a collection type. What is a collection type?
//Vocab: A collection or container is a grouping of some variable number of data items
/// Basically a collection is a group of values. Can you think of some real life examples for a collection of values?
// Playing cards, shopping lists, our queue... and many more

/// In swift there are three collection types. Arrays, Dictionaries, and Sets. BTW, this is a very common developer interview question. Lets define each of those collection types
// Vocab: Arrays are ordered collections of values.
// Vocab: Dictionaries are unordered collections of key-value associations.
// Vocab: Sets are unordered collections of unique values.

/// Starting with the most common data type you will interact with Arrays. How do we create an array?

let arrayOfInt = Array(arrayLiteral: 1,2,3,4)

/// Here we have declared a constant named `arrayOfInt` and assigned it the value of an `Array` initialized with a few numbers. Now, lets create that array a different way
var arrayOfInts = [1,2,3,4]
/// This is called an array literal. Similar to the literal values of other types you can just set the type without calling the initializer. It handles the initialization for you. Is there any difference, aside from the names, in those two properties?  Yes, one is mutable and one is not. If we try to add, or remove an item from the `arrayOfInt` we get an error

arrayOfInts.append(-1)

/// Where will that new value be added? At the end of the sequence, so now the sequence is 1,2,3,4,-1. That feels wrong to have the -1 be at the end, lets remove it. We have a few removal options. If we know that the value we want to remove is the last value we can use
arrayOfInts.removeLast()

/// We can see that we have a removeLast function, do you think same would go for adding something? To add we would look for the keyword insert.  We can use that same code to add any element to any index. Now, when I say index what do I mean?
arrayOfInts.insert(0, at: 0)
/// Because arrays are ordered each item will have their own number, or index tied to it. The first item has an index of 0, the second will have an index of 1. Here is what it looks like https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.c-sharpcorner.com%2FUploadFile%2F433c33%2Fdifferent-exception-generate-in-array-in-java%2F&psig=AOvVaw2Kd-WG_W3VlzhQFnHt6ogs&ust=1599169917157000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNibmbW6y-sCFQAAAAAdAAAAABAE
// I really like the graphic image on this page. Showcase only that
/// If we know the index of the item we can remove it
arrayOfInts.remove(at: 2)
/// As you can see ( show the remove auto complete) there are many ways to remove an item. Using the index is the best
arrayOfInts + [1,3,4]
/// Here we used the addition operator to add another array to that array. Thusly merging the two. Notice that the second arrays values are appended to the end of the array

for num in arrayOfInts {
    print(num)
}
for (index, value) in arrayOfInts.enumerated() {
    print("The index of \(value), is \(index)")
}

///Dictionaries. Dictionaries are awesome because a dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary do not have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.
// Vocab: Dictionaries - A dictionary stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary.
/// Lets create a new dictionary. We need to define the key and value separated by a colon
var hogwarts = [String:String]()
/// currently `hogwarts` doesn't have a value. Lets assign it. Now, because we set the key to be of type string, we need a string for the key. Same for the value
hogwarts = ["Slytherin":"Slytherin values ambition, cunning, leadership, and resourcefulness. The house mascot of Slytherin is the serpent, and the house colours are green and silver.","Hufflepuff":"Hufflepuff values hard work, patience, justice, and loyalty. The house mascot is the badger, and canary yellow and black","Gryffindor":"Gryffindor values courage, bravery, nerve, and chivalry. Gryffindor's mascot is the lion, and its colours are scarlet red and gold (maroon and gold on the ties and scarves)","Ravenclaw":"Ravenclaw values intelligence, learning, wisdom and wit. The house mascot is an eagle and the house colours are blue and bronze"]
/// We can access the value of a dictionary by using the key.
print(hogwarts["Ravenclaw"])

/// We can even use a `tuple` with a `for in` loop to access both values
for (house,detail) in hogwarts {
    print("The noble house of \(house) has a storied history. \(detail)")
}
/// Oh look, more lembas bread ( little LOTR joke here )
for housename in hogwarts.keys {
    print(housename)
}
/// We can create an array of strings from the values of Hogwarts
let houseDetails = [String](hogwarts.values)
print(houseDetails[2])
/// We can remove values for Hogwarts if we know the key too.
hogwarts.removeValue(forKey: "Hufflepuff")

/// What are some uses you can think of for using a Dictionary? Some good examples would be states or playing cards

/// Because the value of a dictionary can have a any value you can nest all the things
var nestedDict: [String: [[String:[Int]]]]
///  This is a dictionary with a key of String and value of an array of dictionaries with a key of strings and array of ints

nestedDict = ["cards":[["Ace":[1,11]],["King":[10]]]]
/// Now, how do we access those values?  Buckle up.
for dicts in nestedDict["cards"]! {
    for dict in dicts {
        print(dict.key)
        print(dict.value)
    }
}

/// Next, lets have a breif discussion on Sets. After that we will jump into building our very first app. A `set` stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once. We will use sets much more during our computer science lessons and when we exlpore databases in week 2 ( core data uses sets ). For now, All that is important is that you know that sets exist and the definition we  just showcased.

/// Now the moment you've all be waiting for... lets build an app!


