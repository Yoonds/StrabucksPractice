//
//  ContentView.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/12.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associate value -> study
    var tabTextItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.tabTextItem
                }
            Text("dsfas")
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("Other")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
