import UIKit

var greeting = "Hello, playground"
print(greeting)

for index in 1..<5 {
    print(index)
}

func greet(name: String) -> String {
    let greeting = "Hello, " + name + "!"
    return greeting
}

print(greet(name: "Mr. BusinessMan"))

var age = 21
print("age = \(age)")

var name:String = "Sally"

