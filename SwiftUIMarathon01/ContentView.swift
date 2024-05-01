//
//  ContentView.swift
//  SwiftUIMarathon01
//
//  Created by Mike Rudoy on 01/05/2024.
//

import SwiftUI

struct FirstView: View {
    
    private enum Constants {
        static let rectangleHeight: CGFloat = 50
    }
    
    private let data: Range<Int> = 1..<101
    
    var body: some View {
        TabView {
            VStack {
                ScrollView {
                    VStack {
                        ForEach(data, id: \.self) { item in
                            Text("\(item)")
                                .font(.system(.title, design: .monospaced))
                                .foregroundStyle(Color(uiColor: .systemGray3))
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .scrollClipDisabled()
                    Rectangle()
                        .fill(Color.red.opacity(0.8))
                        .frame(height: Constants.rectangleHeight)
            }.tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

#Preview {
    FirstView()
}
