import UIKit

/*
 Requirements:

 Write and test the code that meets the following requirements. Submit the text of the code in the text box provided with the assignment.

 It is recommended you create an Xcode project or playground to write and test the code. Do not submit the Xcode project or playground. Submit the block of code as text in the assignment text box.

 States in the USA are abbreviated with two letter codes. For example, Missouri is MO, Pennsylvania is PA, and California is CA.

 Declare a variable called states that is declared as a Swift collection type that has elements that have keys which are a state’s abbreviation and values that are a state’s name. On the declaration line initialize the collection with an empty instance of the collection type.

 Add Missouri (MO), Pennsylvania (PA), and California (CA) to the collection.

 Using for-in iterate through the key/value pairs of the collection and print them in the format: <key> is <value>

 Obtain an array of all of the state abbreviations in the collection and assign it to a constant called stateCodes.

 Iterate through the array of state abbreviations and print each one.

 Remove Pennsylvania (PA) from the collection using subscript syntax and assigning a nil.

 Remove Missouri (MO) from the collection using the removeValue(forKey:) method on the collection.

 Using for-in iterate through the key/value pairs of the collection and print them in the format: <key> is <value>

 The output of your program should look like the following:

 PA is Pennsylvania
 CA is California
 MO is Missouri
 PA
 CA
 MO
 CA is California
 */

var states: [String: String] = [:]
   
states["MO"] = "Missouri"
states["PA"] = "Pennsylvania"
states["CA"] = "California"

for (abbrev, state) in states {
    print("\(abbrev) is \(state)")
}

let stateCodes = [String](states.keys)
for code in stateCodes {
    print(code)
}

states["PA"] = nil
states.removeValue(forKey: "MO")

for (abbrev, state) in states {
    print("\(abbrev) is \(state)")
}
