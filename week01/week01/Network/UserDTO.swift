//
//  UserDTO.swift
//  Baemin
//
//  Created by 진소은 on 11/8/25.
//


import Foundation

/// 사용자 정보 응답 모델
 struct UserResponse: Decodable {
     let id: Int
     let username: String
     let name: String
     let email: String
     let age: Int
     let status: String
}

/// 회원가입 요청 모델
 struct RegisterRequest: Encodable {
     let username: String
     let password: String
     let name: String
     let email: String
     let age: Int
}

/// 로그인 요청 모델
 struct LoginRequest: Encodable {
     let username: String
     let password: String
}

/// 로그인 응답 모델
 struct LoginResponse: Decodable {
     let userId: Int
     let message: String
}

/// 개인정보 수정 요청 모델
 struct UpdateUserRequest: Encodable {
     let name: String?
     let email: String?
     let age: Int?
}
