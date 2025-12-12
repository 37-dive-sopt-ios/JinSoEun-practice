//
//  NavigationPathExample.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/29/25.
//

import SwiftUI


struct NavigationPathExample: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 10) {
                Text("홈")
                    .font(.largeTitle)
                Button("뷰 이동") {
                    path.append(1)
                }
            }
            .navigationDestination(for: Int.self) { step in
                StepView(step: step, path: $path)
            }
        }
    }
}

struct StepView: View {
    let step: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(step)")
                .font(.largeTitle)
            Button("next") {
                path.append(step + 1)
            }
            
            Button("reset") {
                path = NavigationPath()
            }
        }
    }
}

#Preview {
    NavigationPathExample()
}
