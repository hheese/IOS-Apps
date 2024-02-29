import UIKit

var price : Float!
var weight : Float!
//let cost = price * weight
var index : Int

for index in 4 ... 8 {print(index) }

for index in 3 ... 8 {print(index) }

for index in 3 ..< 8 {print(index) }

for index in 4 ..< 8 {print(index) }

var thing = "apple"
var i,j,k: Double

let error = (101, "invalif")
print(error.1)

let hex = 0x10

let p = 1
var name: String? = "done"
if let name = name {print(name)}
print(name!)

func add(_ x:Int, _ y:Int) -> Int {
    return x + y
}

let result = add(4,5)

let valuer = 437.25
//if valuer is Double {print("dub")}
//if valuer is Float {print("flub")}
var latitude = 38.9473, longitude = -92.3287, altitude = 758.2
print(latitude)
print(longitude)
print(altitude)
let rerror = (errorCode: 201, message: "Invalid value.")

print(rerror.message)

var visi1 = true
var visi2: Bool = true
//var visi3:Bool = 1

var l = 5.8
//l = nil
let err = (errorCode: 101, message: "inval")
let (code,message) = err
var opti:Float? = 12.5

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
for (_, airportName) in airports {
    print(": \(airportName)")
}

