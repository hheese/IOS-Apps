import UIKit

/*
 Requirements:

 Write and test the code that meets the following requirements. Submit the code in the text box provided with the assignment.

 It is recommended you create an Xcode project or playground to write and test the code. Do not submit the Xcode project or playground. Submit the block of code in the assignment text box.

 Declare a variable called colors that is an array that holds the string names of a collection of colors and is initialized with the following color names: red, orange, yellow, and pink.

 Remove the last item from the colors array using an array method. (This will remove “pink”.)

 Add “green” to the end of the colors array.

 Create a constant called numColors and set it equal to the number of colors in the array. (Use the computed property available on the array that provides the number of items in the array.)

 Print the number of colors in the array using the format: number of colors = <numColors>

 Print the string “colors:”

 Iterate through the colors array using a for-in loop and print out each array element.

 Declare a constant called moreColors that is an array that is initialized with the following color names: blue, purple

 Declare a variable called allColors and assign it the combined elements of colors and moreColors. The colors elements are to come first and the moreColors elements are to come second in allColors.

 Print the string “all colors:”

 Iterate through the allColors array using a for-in loop and print out each array element.

 The output of your program should look like the following:

 number of colors = 4
 colors:
 red
 orange
 yellow
 green
 all colors:
 red
 orange
 yellow
 green
 blue
 purple
 */

var colors: [String] = ["red", "orange", "yellow", "pink"]
colors.removeLast()
colors += ["green"]

let numColors = colors.count
print("number of colors =", numColors)

print("colors:")
for color in colors {
    print(color)
}

let moreColors: [String] = ["blue", "purple"]

var allColors = colors + moreColors

print("all colors:")
for color in allColors {
    print(color)
}
