//
//  EventsSectionView.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/13.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text("Events")
                Spacer()
                Button("See all") {}
                    .accentColor(.green)
                    .font(.subheadline)
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16.0) {
                    ForEach(Event.smaple) { item in
                        EventSectionItemView(event: item)
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    minHeight: 220,
                    maxHeight: .infinity
                )
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack(alignment: .leading) {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(width: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(
                    maxWidth: .infinity,
                    alignment: .topLeading
                )
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

struct EventsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventsSectionView()
    }
}
