//
//  MenuSuggestionSectionView.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/13.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(User.shared.userName)님을 위한 추천 메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(CoffeeMenu.sample) { menu in
                        MenuSuggestionItemView(coffeeMenu: menu)
                    }
                }
                .padding(.horizontal, 16)

            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            Image("coffee")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}
