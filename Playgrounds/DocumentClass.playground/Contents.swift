import UIKit
/*
 Requirements:

 In this challenge you are to create a class based on the information provided below and submit the code in the assignment text box.

 The class name: Document

 The class has the following properties:

 title
 body
 length
 The title is of type String. It is not an optional. When it is declared it is not set to an initial value. Since it is not an optional and does not have a value set when it is declared, the class init must set the title when a Document instance is created.

 The body is of type String. It is not an optional and is set to an empty string (“”) when it is declared.

 The length is a computed property of type Int. The length property has only a getter that returns the number of characters in the body string. The number of characters in the body can be determined using:

 body.count
 The title and body are to modifiable. They are not to be implemented as constants.

 The Document class is to have two initializers. One initializer is to receive only the title. The other initializer is to receive a title and a body.

 Test the Document class using the following code:

 let document1 = Document(title: "Hello World")
 document1.title = "Hello World!"
 document1.body = "I awoke from a digital slumber."
 let document2 = Document(title: "The Day", body: "It was a day to remember.")
 print(document1.title)
 print(document1.body)
 print(document1.length)
 print(document2.title)
 print(document2.length)
 The output should be:

 Hello World!
 I awoke from a digital slumber.
 31
 The Day
 25
 */

class Document {
    var title: String
    var body: String = ""
    var length: Int {
        get {
            return body.count
        }
    }
    init(title: String) {
        self.title = title
    }
    init(title: String, body: String) {
        self.title = title
        self.body = body
    }
}

let document1 = Document(title: "Hello World")
document1.title = "Hello World!"
document1.body = "I awoke from a digital slumber."
let document2 = Document(title: "The Day", body: "It was a day to remember.")
print(document1.title)
print(document1.body)
print(document1.length)
print(document2.title)
print(document2.length)
