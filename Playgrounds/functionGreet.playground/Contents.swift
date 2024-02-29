import UIKit
/*
 Requirements:

 For this challenge you are to submit the code for the requested function in the text area provided with the assignment.

 The name of the function: greet

 The function has two parameters.

 The first parameter is a String that provides the name of the person to be greeted. The argument label is to be person and the parameter name is to be name.

 The second parameter is a String that provides the greeting to be used. The argument label and the parameter name are to be greeting.

 The function returns a String that is comprised of the greeting followed by a space followed by the name of the person to be greeted.

 Example return String: Hello Karen
 
 */

func greet(person name: String, greeting: String) -> String {
    return "\(greeting) \(name)"
}

greet(person: "Karen", greeting: "Hello")
