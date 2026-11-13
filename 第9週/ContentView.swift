import Playgrounds
import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Songs", systemImage: "music.note") {
                SongList()
            }

            Tab("About Henry", systemImage: "person") {
                aboutHenry()
            }
            Tab("Youtube Chanel", systemImage: "waveform") {
                web()
            }
        }
    }
}
#Preview {
    ContentView()
}
