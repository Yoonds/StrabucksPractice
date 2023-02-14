//
//  HomeHeaderView.swift
//  Cafe
//
//  Created by YoonDaesung on 2023/02/14.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                \(User.shared.userName)님~
                반갑습니다!☕️
                """)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .fixedSize(horizontal: false, vertical: true)
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
            }
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "mail")
                    Text("What's New")
                        .font(.system(
                            size: 16,
                            weight: .semibold,
                            design: .default)
                        )
                }
                .foregroundColor(.secondary)
                
                Button(action: {}) {
                    Image(systemName: "ticket")
                    Text("Coupon")
                        .font(.system(
                            size: 16,
                            weight: .semibold,
                            design: .default)
                        )
                }
                .foregroundColor(.secondary)
                
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
                
            }
        }
        .padding(16.0)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
