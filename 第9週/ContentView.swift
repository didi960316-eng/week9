import Playgrounds
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("a") {
                    Text("a")
                }	
                NavigationLink("b") {
                    Text("b")
                }
            }.navigationTitle("c jjieidojdo")
        }

    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
