//
//  CoverFlowView.swift
//  CoverFlowCarousel
//
//  Created by Leonard McCook-Carr on 1/31/24.
//

import SwiftUI

/// Custom View
struct CoverFlowView<Content: View, Item: RandomAccessCollection>: View where Item.Element: Identifiable {
    var itemWidth: CGFloat
    var items: Item
    var content: (Item.Element) -> Content
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 0) {
                    ForEach(items) { item in
                        content(item)
                            .frame(width: itemWidth)
                    }
                }
                .padding(.horizontal, (size.width - itemWidth) / 2)
            }
        }
    }
}

/// Cover Flow Item Model
struct CoverFlowItem: Identifiable {
    let id: UUID = .init()
    var color: Color
}

#Preview {
    ContentView()
}
