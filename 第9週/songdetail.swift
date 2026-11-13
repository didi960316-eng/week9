import Foundation
import SwiftUI

struct songdetail: View {
    let song: Song
    var body: some View {
        VStack {
            Image(song.image)
                .resizable()
                .scaledToFit()
            Text("發行日期：\(song.releaseDate)")
            Text(song.description)
                .padding()
            Spacer()
        }
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
        .navigationTitle(song.name)
    }
}

#Preview {
    NavigationStack {
        songdetail(
            song: Song(
                name: "indigo",
                description: "描寫對已逝感情與對方靛藍般印象的眷戀與遺憾。",
                releaseDate: "2025/03/28",
                image: "indigo"
            )
        )
    }
}
