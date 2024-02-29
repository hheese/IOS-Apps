import UIKit

let defaultL = 0.5
var setL: Double?
var audL = setL ?? defaultL
// returns optional if it has a value, otherwise default

class Trip {
    var title: String
    init(title: String) {
        self.title = title
    }
    init() {
        self.title = "Empty"
    }
}
var trip: Trip?
trip?.title = "Vaca"

