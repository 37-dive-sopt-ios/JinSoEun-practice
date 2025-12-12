//
//  ChatRow.swift
//  SwiftUI_Tutorial
//
//  Created by 진소은 on 11/22/25.
//

import SwiftUI

struct ChatRow: View {
    let chatRoom: ChatRoomModel // 모델 추가
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            ZStack {
                Image(.profile)
                if let profileImage = chatRoom.profileImage {
                    profileImage
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(chatRoom.name)
                        .font(.system(size:16, weight: .semibold))
                        .fontWeight(.bold)
                    Text(chatRoom.location)
                        .font(.system(size:12, weight: .light))
                        .foregroundStyle(.gray)
                }
                Text(chatRoom.lastMessage)
                    .font(.system(size: 14, weight: .medium))
            }
            Spacer()
            if let thumbnail = chatRoom.thumbnail {
                thumbnail
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
}

#Preview {
    ChatList(chatRooms: ChatRoomModel.mockData)
}
