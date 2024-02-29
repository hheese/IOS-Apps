import UIKit

extension Double {
    func add(_ str: String) -> Double? {
        if let x = Double(str) {
            return x + self
        }
        return nil
    }
}

let value1: Double? = 3.5.add("1.2") // value1 will equal 4.7
let value3: Double? = 1.5.add("words") // value will be nil
