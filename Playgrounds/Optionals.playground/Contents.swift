import UIKit

var name: String? = "Quaxley"
// use ? to set as an optional

//name = nil
// only an optional type can be set to nil

if (name != nil) {
    print(name!)
    // can force an unsafe unwrap using !,
    // but only if you're sure it isn't empty
} else {
    print("Name is nil.")
}

// optional binding allows safe unwrapping
if let unwrappedName = name {
    // if it can be unwrapped, then it is given to a constant
    print(unwrappedName)
} else {
    print("name is nil and has no value")
}

var greeting: String! = "Hello"
// implicitly unwrapped optional

print(greeting)

var num = Int("36")
print(num)
