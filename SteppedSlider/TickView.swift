//
//  TickView.swift
//  SteppedSlider
//
//  Created by Josh Kowarsky on 12/26/20.
//

import SwiftUI

struct TickView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    let numTicks = 10
    let offset: CGFloat = 10

    var body: some View {
        GeometryReader { geometry in
            let spacing = (geometry.size.width - (offset * 2)) / CGFloat(numTicks)
            ForEach(0..<numTicks + 1) { i in
                let startX = (CGFloat(i) * spacing) + offset
                Line(offset: startX, width: Int(viewModel.val * 10) == i ? 2 : 1, height: geometry.size.height, fill: Int(viewModel.val * 10) == i ? Color.white : Color.gray)
            }
        }
        .frame(minHeight: 10)
    }
}


struct TickView_Previews: PreviewProvider {
    static var previews: some View {
        TickView()
            .environmentObject(ViewModel())
    }
}


struct Line: View {
    let offset: CGFloat
    let width: CGFloat
    let height: CGFloat
    let fill: Color

    var body: some View {
        Path { path in
            let startX = offset - (width)
            let stopX = offset + width
            path.move(to: CGPoint(x: startX, y: 0))
            path.addLine(to: CGPoint(x: startX, y: height))
            path.addLine(to: CGPoint(x: stopX, y: height))
            path.addLine(to: CGPoint(x: stopX, y: 0))
            path.closeSubpath()
        }
        .fill(fill)
    }
}
