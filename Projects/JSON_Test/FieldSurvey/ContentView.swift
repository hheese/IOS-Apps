
import SwiftUI

struct ContentView: View {
    var observations: Observations?
    let jsonFileName = "field_observations"  // .json not included here because it is added when doing the loading
    let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "MMMM d, y h:mm a"
        dateFormatter.amSymbol = "am"  // by default it is AM and PM
        dateFormatter.pmSymbol = "pm"
        self.observations = Loader.load(jsonFileName: jsonFileName)
    }
    
    var body: some View {
//        List(observations!.events) { state in
//            Text(state.title)
//        }
        NavigationView {
            List(observations!.events) { event in
                NavigationLink(destination: ObservationDetailView(observation: event)) {
                    ObservationListCellView(observation: event)
                }
            }.navigationTitle("Field Survey")
        }
    }
    

    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

