//
//  ChatTableViewCell.swift
//  week01
//
//  Created by 진소은 on 11/1/25.
//

import UIKit

import SnapKit

class ChatTableViewCell: UITableViewCell {
    
    static let identifier: String = "ChatTableViewCell"
    
    // MARK: - UI Components
    
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .systemGray5
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "듀듀"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.text = "가좌동"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        return label
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "냐세요"
        label.font = .systemFont(ofSize: 14)
        label.textColor = .black
        label.numberOfLines = 1
        return label
    }()
    
    private let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 4
        imageView.backgroundColor = .systemGray6
        return imageView
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set Layout
    
    
    private func setLayout() {
        self.addSubviews(profileImageView, nameLabel, locationLabel, messageLabel, thumbnailImageView)
        
        
        profileImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
            $0.size.equalTo(40)
        }
        
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(profileImageView.snp.top).offset(0.5)
            $0.leading.equalTo(profileImageView.snp.trailing).offset(16)
        }
        
        locationLabel.snp.makeConstraints {
            $0.leading.equalTo(nameLabel.snp.trailing).offset(4)
            $0.centerY.equalTo(nameLabel)
        }
        
        messageLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(6)
            $0.leading.equalTo(profileImageView.snp.trailing).offset(16)
            $0.trailing.equalTo(thumbnailImageView.snp.leading).offset(-8)
        }
        
        thumbnailImageView.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.centerY.equalToSuperview()
            $0.size.equalTo(40)
        }
    }
}

extension ChatTableViewCell {
    public func configure(chatRoom: ChatRoomModel) {
        profileImageView.image = chatRoom.profileImage
        nameLabel.text = chatRoom.name
        locationLabel.text = chatRoom.location
        messageLabel.text = chatRoom.lastMessage
        thumbnailImageView.image = chatRoom.thumbnail
    }
}

#Preview {
    ChatTableViewCell()
}
