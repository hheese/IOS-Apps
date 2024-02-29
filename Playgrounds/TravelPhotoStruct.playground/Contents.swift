import UIKit
/*
 Requirements:

 In this challenge you are to create a struct based on the information provided below and submit the code in the assignment text box for the struct as well as the line of code for creating the specified instance.

 The struct name: TravelPhoto

 The struct has the following properties:

 latitude
 longitude
 title
 description
 image
 urlString
 The latitude and longitude are of type Double.

 The title, description, image, urlString are of type String.

 The properties of the struct are not changeable after they are set.

 After the code for the struct, create an instance and assign it to a constant called photo1 using the following information:

 latitude = 38.94733
 longitude = -92.328466
 title = “The Mizzou Columns”
 description = “University of Missouri six iconic columns”
 image = “columns.png”
 urlString = “http://missouri.edu/about/history/columns.php (Links to an external site.)”
 */

struct TravelPhoto {
    let latitude, longitude: Double
    let title, description, image, urlString: String
    
}

let photo1 = TravelPhoto(
    latitude: 38.94733,
    longitude: -92.328466,
    title: "The Mizzou Columns",
    description: "University of Missouri six iconic columns",
    image: "columns.png",
    urlString: "http://missouri.edu/about/history/columns.php"
)

