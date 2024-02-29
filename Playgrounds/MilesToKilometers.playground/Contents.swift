import UIKit

/*
 Requirements:

 For this challenge you are to submit the code for the requested function in the text area provided with the assignment.

 The name of the function: convertMilesToKilometers

 The function has one parameter that receives the number of miles as a Double.

 The parameter requires no argument label when the function is called and has a parameter name of miles.

 The function returns a Double that is the number of kilometers.

 Note that 1 mile is 1.60934 kilometers. To calculate the number of kilometers, multiply the number of miles by 1.60934.
 */

func convertMilesToKilometers(_ miles: Double) -> Double {
    return miles * 1.60934
}

print(convertMilesToKilometers(1))
print(convertMilesToKilometers(2))
