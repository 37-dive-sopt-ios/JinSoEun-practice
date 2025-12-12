//
//  ScrollViewPractice.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/22/25.
//

import SwiftUI

struct ScrollViewPractice: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 120, height: 120)
                    
                    Image(systemName: "person.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.gray)
                }
                .padding(.top, 20)
                
                nameWithPosition
                ageAndMBTI
                Spacer()
                    .frame(height: 1000)
                hobby
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 70)

        }
        directMessageButton
    }
    
    
    private var nameWithPosition: some View {
        HStack {
            Text("iOS")
                .font(.subheadline)
            Text("진소은")
                .font(.headline)
                .foregroundStyle(.blue)
            Spacer()
            Text("파트원")
                .foregroundStyle(.gray)
                .font(.subheadline)
        }
        .padding(.vertical, 2)
    }

    private var ageAndMBTI: some View {
        HStack {
            Text("02년생")
                .font(.subheadline)
            Spacer()
            Text("ESTJ")
                .font(.subheadline)
                .foregroundStyle(.indigo)
        }
    }

    private var hobby: some View {
        Text("취미: 야구시청, 독서, 뜨개질 등")
    }

    private var directMessageButton: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.blue)
                .overlay {
                    Text("디엠 보내기")
                        .foregroundStyle(.white)
                }
        }
        .frame(height: 50)
        .padding(.horizontal, 20)
    }
}

#Preview {
    ScrollViewPractice()
}
