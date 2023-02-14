//
//  User.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/15.
//

import Foundation

struct User {
    let userName: String
    let account: String
    
    // 공통으로 사용되는 싱글톤 패턴
    static let shared = User(userName: "Yoonds", account: "fast.campus")
}
