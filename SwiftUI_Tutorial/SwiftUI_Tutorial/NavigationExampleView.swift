//
//  NavigationExampleView.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/29/25.
//


//
//  NavigationExampleView.swift
//  SwiftUI_Tutorial
//
//  Created by 이명진 on 11/28/25.
//

import SwiftUI

struct NavigationExampleView: View {
    enum Destination: Hashable {
        case detail
        case setting
        case profile

        var title: String {
            switch self {
            case .detail:
                "detail"
            case .setting:
                "setting"
            case .profile:
                "profile"
            }
        }
    }

    var body: some View {
        NavigationStack {
            List {
                NavigationLink(Destination.detail.title, value: Destination.detail)
                NavigationLink(value: Destination.setting) {
                    Text(Destination.setting.title)
                }
                NavigationLink(value: Destination.profile) {
                    Text(Destination.profile.title)
                }
            }
            .navigationTitle("메인")
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .detail:
                    Text("Detai")
                case .setting:
                    Text("Setting View")
                case .profile:
                    Text("Profile View")
                }
            }
        }
    }
}

#Preview {
    NavigationExampleView()
}
