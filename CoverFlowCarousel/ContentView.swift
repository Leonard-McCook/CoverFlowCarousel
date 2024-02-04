//
//  ContentView.swift
//  CoverFlowCarousel
//
//  Created by Leonard McCook-Carr on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [CoverFlowItem] = [.red, .blue, .green, .yellow, .primary].compactMap {
        return.init(color: $0)
    }
    /// View Properties
    @State private var spacing: CGFloat = 0
    @State private var rotation: CGFloat = .zero
    var body: some View {
        NavigationStack {
            VStack {
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                CoverFlowView(
                    itemWidth: 280,
                    spacing: 0,
                    rotation: 0,
                    items: items
               ) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(item.color.gradient)
                }
                .frame(height: 180)
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                /// 
            }
            .navigationTitle("CoverFlow")
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
