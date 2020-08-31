import UIKit

var str = "Hello, playground"


/* Let's go ahead and create our first playground! When we start off a new playground, you will notice that it comes with two lines of code to start. "import UIKit" and "var str = "Hello, playground". We will cover the first line tomorrow, and the second line  little bit later today. For now, let's go ahead and ignore those 2 lines.*/

/* Let's add 2 of the most basic lines of code. One one line, let's type a number, and on the next, let's type some text. In order for our playground to know this is text, and not specific code, we need to put quotes around our text. We will dive into this later today.*/

600
"Yay"

/* Now let's click the play button at the bottom of the screen, or on our lowest line number. Note that the inspector pane on the right hand side is showing us the values of our code in the editor pane. Note var str at the top as well.*/

/* One thing to be aware of, this is a computed value on the inspector pane, it is not simply copying what we wrote. To see this play out a little further, let's write another line, but lets actually do some work this time */

34 + 2 * 4

/* See how it printed out 42 on the inspector pane? Not only did it calculate our value, it even followed the mathematical order of operations.*/

/* So this has given us a basic understanding of our code editor pane as well as our inspector pane, but we haven't seen the debug console yet. One of the best ways to debug (as you will see throughout the program) is to use print statements. We can print many things including hardcoded values and existing variables. Let's add a few print statements.*/

print(63)
print("Hello")
print(str)

/* Notice how the begug console pops up at the bottom of your screen and shows you your printed out values. You could even add logic inside a print statment. For example, add print(63 + 2) and you will see 65 print out.*/

print(63 + 2)

/* I want to show you one more feature of a playgorund and our debug console. Go ahead and type in 4 / 0 */

4 / 0

/* If you give it a few seconds, you will notice a red line pop up along with an error message to the right, saying: "Division by Zero". If you were to hit the play button before that error message popped up you would see a long error message in the debug console, starting with: error: My First Playground.playground:33:3: error: division by zero. These two features will annoy you, because they will blatently point out an error in the code you wrote, but, they really are great. Imagine if we didn't get these errors and simply got a message like: "Something is wrong in your code. Please fix it." With it pointing out so specifically what is wrong, we can easily go and fix our code.*/
