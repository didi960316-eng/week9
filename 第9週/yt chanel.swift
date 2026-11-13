import SwiftUI
//
//  yt chanel.swift
//  第9週
//
//  Created by 115-1Student14 on 2026/11/10.
//
import WebKit

struct web: View {
    var body: some View {
        WebView(
            url: URL(
                string:
                    "https://www.youtube.com/channel/UCm9QkyzLndab1_0VHnRIXrA"
            )
        )
        .background {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    web()
}
