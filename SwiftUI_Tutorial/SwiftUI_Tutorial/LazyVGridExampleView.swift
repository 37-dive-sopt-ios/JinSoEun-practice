//
//  LazyVGridExampleView.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/29/25.
//

import SwiftUI

struct LazyVGridExampleView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(0x1f600...0x1f679, id: \.self) { value in
                    Text(String(format: "%x", value))
                    Text(emoji(value))
                        .font(.largeTitle)
                    
                }
            }
        }
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    LazyVGridExampleView()
}
