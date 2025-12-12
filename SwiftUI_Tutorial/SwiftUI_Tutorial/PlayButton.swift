//
//  PlayButton.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/22/25.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(isPlaying ? "일시정지" : "재생") {
            isPlaying.toggle()
        }
    }
}

struct PlayerView: View {
    @State private var isPlaying: Bool = false

    var body: some View {
        VStack {
            Text("듀...")
                .foregroundStyle(isPlaying ? .primary : .secondary)
                
            PlayButton(isPlaying: $isPlaying) // 바인딩 전달
        }
    }
}

#Preview {
    PlayerView()
}
