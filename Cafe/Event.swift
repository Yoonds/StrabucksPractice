//
//  Event.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/13.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let smaple: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정", description: "제주도 한정 음료가 출시되었습니다!"),
        Event(image: Image("coffee"), title: "제주도 한정", description: "여름이니까 아이스 커피"),
        Event(image: Image("coffee"), title: "제주도 한정", description: "제주도 한정 음료가 출시되었습니다!")
    ]
}
