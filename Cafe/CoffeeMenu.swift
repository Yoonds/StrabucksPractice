//
//  CoffeeMenu.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/13.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let id = UUID()
    let image: Image
    let name: String
 
    static let sample: [CoffeeMenu] = [
    CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
    CoffeeMenu(image: Image("coffee"), name: "바닐라 라떼"),
    CoffeeMenu(image: Image("coffee"), name: "카페 라떼"),
    CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
    CoffeeMenu(image: Image("coffee"), name: "드립 커피"),
    CoffeeMenu(image: Image("coffee"), name: "토통 커핀")
    ]
}
