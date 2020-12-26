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
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                for i in 0...numTicks {
                    let offset: CGFloat = 10
                    let spacing = (geometry.size.width - (offset * 2)) / CGFloat(numTicks)
                    let startX = (CGFloat(i) * spacing) + offset
                    let stopX = startX + 1
                    path.move(to: CGPoint(x: startX, y: 0))
                    path.addLine(to: CGPoint(x: startX, y: geometry.size.height))
                    path.addLine(to: CGPoint(x: stopX, y: geometry.size.height))
                    path.addLine(to: CGPoint(x: stopX, y: 0))
                    path.closeSubpath()
                }
            }
            .fill(Color.white)
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
