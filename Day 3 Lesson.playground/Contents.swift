import UIKit

/* So far we have learnt about variables and constants, different data types including Ints, Strings, Bools, and even Dates & UIImages. We have also ascended into different types of Operators and Conditionals. Today, we are going to take it a few steps further. We are going to learn how to use functions and loops, and how they can interact with our data. So let's go ahead and talk about functions. */

/* First of all, what is a function? Does anyone know?*/
/// Ask. When someone gives a mostly correct answer, move on.
// Functions: Self-contained block of code that performs a specific task.
/// Add this to our glossary.

/* Yes, exactly, functions are a block of code that we can use to perform a specific task. But why would we need to use a function, you ask? That is a great question! I know we haven't gone into how to build a function and what the different parts mean, but let's take a look at a simple example of where we would want to use one, and then we will go back through the parts of a function and how to build one... We will use school test as an example. Let's say we have 4 students in Herbology, and Professor Sprout know this is a tough test, so she is going to give everyone a bonus 5 points. But the test is currently out of 50, so she also needs to double their points to work out their final percentage. We could obviously do this math in one line, but for the sake of this demonstration we are going to do it in 2. Note the current scores before we adjust them.*/

var hermoinesScore = 44
var ronsScore = 38
var harrysScore = 39
var nevillesScore = 47

/* If we were to do this in two lines, we would have to do the following: */
// hermoinesScore += 5
// hermoinesScore *= 2
/// Demonstrate how this results in 98 - also show that we would now have to add 2 lines for each student. Sure, with 4 students it isn't so bad - just 8 lines total. But what if we have 400 students, this would mean 800 lines total.
/* But wait a minute... Looks like Neville has a 47. So, if we were to give him 5 points and then double his score, he would have over a hundred... We don't want that. 100% should be the max. So, now we need to add some sort of an if statement...*/
//if hermoinesScore > 100 {
//    hermoinesScore = 100
//}
/* So we just added three lines of code. Bringing us to a total of 5 lines of code. Pretty simple. Not that much. Except for when we think about 400 students again... Now we are up to 2000 lines of code.*/

/* Now let's create a basic function to do this for us.*/
// INSTRUCTOR - Remember that students knowledge on functions are limited to thier pre-class reading, this should be a brief demonstration of why we would want to use a function. Do not expect them to understand terms like parameters, return types, scope, etc...

func calculateStudentsNewScore(initialScore: Int) -> Int {
    let newScore = initialScore + 5
    var finalScore = newScore * 2
    if finalScore > 100 {
        finalScore = 100
    }
    return finalScore
}

calculateStudentsNewScore(initialScore: hermoinesScore)
calculateStudentsNewScore(initialScore: ronsScore)
calculateStudentsNewScore(initialScore: harrysScore)
calculateStudentsNewScore(initialScore: nevillesScore)

/* So check this out! If we had 400 students, our total lines of code would have just dropped from 2000 to 408 because we created a function, that allowed us to reuse the same block of code, over and over again, for a specific task. Functions are so valuable! Fun fact: when we learn about Collections tomorrow, we may be able to drop this code from 2000 down to 9 lines of code. */

/* Okay. So let's learn how to actually build one of these!*/
// Break down the anatomy of a function:

/// func nameOfFunc(parameter: parameterType) -> returnType { bodyOfFunction or scopeOfFunction }

// First, we have the word "func" this needs to go at the beginning of any function. This declares that the following code is in fact a function.

// Second, we give our function a name. We can write whatever we want here. The name is our choice. But, convention says that the name of a function should tell the developer what the function will accomplish.

// Third, we place any parameters a function might need inside parenthesis. Does anyone know what a parameter is? Or can you maybe work out what a parameter is based on my calculateStudentsNewScore example? Yes! Parameters are the data that a function needs in order for the function to run properly. In the our calculateStudentsNewScore function, we needed their initial score in order to be able to calculate their new score. Does this make sense? Our parameter has 2 parts. 1) We give it a name of our choosing. This name should indicate what is being passed in. 2) We need to specify the type that this parameter is expected to be. A function does not require previous info. We could write a function that simply does some stuff without requiring additional info.
/// Instructor - share an example of this: func goodGuy() { print("I am not a death eater!") }
/// ASK QUESTIONS. QUIZ STUDENTS. MAKE SURE EVERYONE UNDERSTANDS PARAMETERS!

// Fourth, -> (this is the marker that indicates that a function is going to return something). But not all functions need to return something. Note the goodGuy() function above. It didn't return anything. It simply printed out something. So what exactly does "returning" something do? When we return a value, we literally return the value to the location where the function was called (we will go into calling a function shortly). Let's look at one of our previous examples, except this time we are going to use an assignment operator. Take a look:

var harrysNewScore = calculateStudentsNewScore(initialScore: harrysScore)
// Now, we are not saying that harrysNewScore equals a function, but rather we are saying harrysNewScore equals the returned value of that function. Look at what happens when we print harrysNewScore.
print(harrysNewScore)

// Fifth, and finally, we can open up the body of the function, also called the scope of the function. We do this the same we we opened up the scope of an if-else statement, with the opening curly bracket, {, and we close it with the closing curly bracket, }. After you type { you can simply hit enter, and your cursor will move into the body of the function. You will also note that it automatically added the } for you.

// Now, there is one more thing we need to make sure we do whenever writing a function. That is to call! Functions are blocks of code, and they can go anywhere in your code, but they do not run by themselves. A function needs to be called! Does anyone know how to do this? (wait for answers) We call it by simply typing out the function name (do not type func, just the name, and use auto-complete). In our previous example of calculateStudentsNewScore, we would type that name in, and then we would be prompted to enter a value after initialScore:... This is where we would have to enter an Int of some sort (or a variable/constant that represents and Int). Ex.

let someonesScore = calculateStudentsNewScore(initialScore: 44)

// Let's practice some new functions...

// Let's create a function called printStudentsAge. Any guesses what this function will do? Print a students age? Exactly! When we use good naming conventions, we don't even have to read the code to know what is going to happen. Let's start writing this. What do we need first?
// (have students help you out)
/// func printStudentsAge

// Awesome! We have the function declaration, and the name of our function. What is the next part of our function? Yes! Parameters! But, remember, parameters are not required. We get to decide if our function needs a parameter or not. If we are going to want to print a bunch of students ages, should we take in a parameter? Thumbs up or thumbs down.
// (ask students why they voted the way they did)
// Yes, for this function, we should probably add a parameter to take in a students age, so that we can print it out. What should we name this parameter? (listen to suggestions) Yea, age or studentsAge is probably a good option! What should we set the type to? (listen to suggestions) We could really go multiple directions here. We could go with a Float or a Double if we want to be really specific. But generally we don't say to people "Hi, my names Jake, I'm 26.7 years old." So let's just go with an Int for the time being.
/// func printStudentsAge(age: Int)

// Alright! We are getting there. What is the next part of a function? (wait for answers) Yes, the return type. But, just like parameters, a return type is not always necessary. For this function, where we simply want to print an age, do we need to return a value? No, we do not! So, we can skip this part and move on to opening up the body of the function.

/// func printStudentsAge(age: Int) { }

// Perfect! Now let's add the final piece... print(age). And of course, let's call our function

func printStudentsAge(age: Int) {
    print(age)
}

printStudentsAge(age: 26)

//Notice how we can access that parameter being passed in by referring to it's parameter name. What questions do we have about this function.

/* Now let me ask you a tricky question... in the above code, what is being called first? Line (86) or line (83)? (thumbs up for 83, thumbs down for 86 - ask for reasoning). Yes, line 83. Remember what we said earlier. A function can be written anywhere but will not run until it is called. In this case, when our code hits 82, nothing actually happens. But once it hits line 86, it will then run the code on 82-84, sending over 26 as the value for the parameter age. (explain this further if students are not understanding) */


/* Okay. I think we can do a little better than this function though. What if we wanted to print out more details than just a students age. What if we wanted to print out their name and age? Any thoughts on how we would do this? Yes, exactly, we would add another parameter. We can do this by separating our parameters with a comma. (walk them through the following code: */

//func printStudentDetails(name: String, age: Int) {
//
//}

/* Okay we have our function. Now all we have to do is add our print statements, right? We could use 2 print statements or use a comma. */

//func printStudentDetails(name: String, age: Int) {
//  print(name, age)
//}
//
//printStudentDetails(name: "Cameron", age: 30)

/* But let me show you something pretty cool about Strings! It's called String Interpolation. String interpolation allows us to create a string, and interpolate other values into that string. Interpolate essentially means to insert. So we can create a sentence like "Hi, my name is..." and insert the value of our name parameter. We do this by adding a \() and placing value inside the parenthesis. */

func printStudentDetails(name: String, age: Int) {
  print("Hi my name is \(name) and I am \(age) years old.")
}

printStudentDetails(name: "Cameron", age: 30)

/* Okay. Why don't you all take 20-30 minutes and try to create 3 of your own functions. Use an Int in at least one of them. Use a String in at least one of them. (instructor - keep students on discord for this; stay available to assist; then go over student function examples) */



// ---------------- RECOMMENDED 20 MINUTE BREAK HERE ----------------


/* Okay. Welcome back! Now we are going to take a look at something in programming called "loops". Does anyone have an idea what a loop is? (listen to answers, move forward when you hear something remotely correct) Yes, pretty much as it sounds. Loops will repeat a block of code multiple times. Now, let's think about that for a second. If a loop repeats code multiple times, how does it know when to stop. Here is one of the biggest dangers of a loop. If we don't properly tell our loop when to stop, it might try to run forever. That's a problem. Our computer memory is limited. Not only can an infinite-loop cause Xcode to crash, it can cause your entire computer to crash. And if you were to send out an app with a looping bug in it, you can cause users devices to crash. So, we have to pay extra attention to our loops, and how we program them. There are 2 commonly used loops that I want to go over today, While Loops, and For-In Loops. There are more, but those will be our focus for today. */

/* So let's start with a while loop. While loops are fairly straight forward. "While" a certain condition is true, continue to run the loop. Let's look at the anatomy of a while loop first.
 
 We use the keyword while, followed by a condition, and then by the body or scope of the loop. The conditions could vary. For ex: while x > 20, or, while firstName == "Cameron"
 
 
 Let's look at an example. Can you tell me what is going to happen in this while loop?
 */

//let x = 0
//while x < 20 {
//    print("X is small")
//}

/// Make sure the students understand 1) that so long as x is less that 20 it will continue to print "X is small" 2) That this is an infinite loop because nothing ever tells x to change (note: x needs to be changed from a constant to a variable).

/* Let's fix this while loop so that we can have a quality working loop. */

var x = 0
while x < 20 {
    print("X is small")
    x += 1
}

/* Excellent. Now we have a working while loop! We know that each time this loop runs it will first print out "X is small" and then it will add 1 to x. At that point, x will = 1, the loop will reassess, and then run the loop again, becasue x will equal 1, and 1 is less than 20. It will do this all the way until x equals 20, and then it sill cease to run,  the while loop, because the condition (x < 20) will be false. (note: in our inspector it shows how many times this while loop ran) */

/* Loops can be paired with some additional conditions that make for some pretty cool programming! For example, yesterday we learned about the if statements. Let's write a similar block of code, but only print the number if it is even. */

var y = 0
while y < 20 {
    if y % 2 == 0 {
        print("Y is small and even")
    }
    y += 1
}

/* Notice that the while loop ran 20 times, but the if statement only ran 10 times! */

/* Let's spend 10 minutes and create 2 while loops. Try and think of some different ways to use a while loop. Don't be afraid to show-off! ;) */

//(INSTRUCTOR - have students share their examples, help solve any broken examples, make sure everyone is feeling comfortable with while loops)

/* Okay, let's look at a different kind of loop. A for-in loop. The name, for-in, isn't as plainly obvious as to what it does, like a while loop is. A for-in loop iterates through a collection. Now, you might be thinking, "Okay, what is a collection?" We will go into collections more tomorrow, but for know, think of a collection as a sequence of multiple items. For an example, yesterday we talked about a range during the fizzBuzz challenge. That range (1 through 100) is a sequence of numbers 1, 2, 3, 4, and so on... Another example is a string. A string is simply a sequence of characters. The string "Hello" is actually "H", "e", "l", "l", and "o". A for-in loop can go through any collection like this and preform some logic to each item in that sequence. */

/* To create a for-in loop, we start be typing for, then give our iteration a variable name, followed by the word in, and then whatever collection we are going through. Let's look at an example and then talk about it. */

let range = 1...10
for number in range {
    print(number)
}

// Instructor, explain:
/// 1) let range is a collection of numbers
/// 2) number is a name that we provide (I could have called it n, or x) that will represent each number in the range. The first time it will be 1, second time 2, and so on.
/// 3) range in the for-in loop is simply reffering to our var range.
/// 4) note in the inspector how many times this ran

/* Let's look at another example.*/

for letter in "hello" {
    print(letter.uppercased())
}

// Instructor, explain:
/// 1) letter is a name that we provide (I could have called it l, or char) that will represent each letter in the word "hello". The first time it will be "h"", second time "e", and so on.
/// 2) note in the inspector how many times this ran

// Now, let's look back at for number in range, & what if we didn't want to actually do anything with that number. What if, for each number in a range we just wanted to print "Harry Potter is awesome!" Well, that is where we can use a wildcard...

for _ in range {
    print("Harry Potter is awesome!")
}

/* Another cool thing we can do is combine a loop with an if-statement. Let's create a for-in loop where we iterate through the word "Devmountain" and only print the vowels... */

for letter in "Devmountain" {
    if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
        print(letter)
    }
}

/* See how neat programming can be! We just combined a for-in loop with a conditional statement that uses a logical operator! */

/* Let me show you one other cool thing that can be combined with loops. Where clauses. By adding a where clause to a loop, we can essentially say, only run this block of code where a certain condition is true. It is very similar to adding an if-statement to the inside of a loop, but instead, we get to set the condition on the same line as the loop, preventing us from entering that loop unnecessarily. Here is how we would write the above block of code with a where clause added.*/

for letter in "Devmountain" where letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
    print(letter)
}

// or

let rangeOneToTwenty = 1...20
for number in rangeOneToTwenty where number % 4 == 0 {
    print(number)
}


/* How awesome is this! Code can be combined to do some really fantastic stuff! What questions do we have. I really want all of us to feel 100% on whats going on with while loops and for-in loops. */

/* Okay, let's take 10 minutes and create 2 for-in loops. */

//(INSTRUCTOR - have students share their examples, help solve any broken examples, make sure everyone is feeling comfortable with for-in loops)

/* Okay. Let's get a little more complicated with this... I am going to write out some code, I want you all to send me a private message in the g2m chat, telling me the value of guessMe when this block of code finishes running... You may want to grab a some paper and a pencil for this one. */

// (instructor, type this out without print statments. Then add them afterwards to demonstrate the control flow. Ask students not to type it out, but just to read through it. If they cheat, that only hurts them.)

var guessMe = 54

while guessMe < 100 {
    if guessMe % 4 == 0 || guessMe % 5 == 0 {
        guessMe += 25
        print("+25 \(guessMe)")
    } else if guessMe % 3 == 0 {
        guessMe -= 27
        print("-27 \(guessMe)")
    } else {
        guessMe += 3
        print("+3 \(guessMe)")
    }
    guessMe += 22
    print("+22 \(guessMe)")
}

print(guessMe)

/* Okay. I want to briefly introduce something, and that is Higher Order Functions. We will see more of this tomorrow, but higher order functions are essentially function that take in additional functionality as an argument. Let's look at this on .map. */

let newRange = rangeOneToTwenty.map { $0 * 2 }
print(newRange)
