//
//  ContentView.swift
//  SteppedSlider
//
//  Created by Josh Kowarsky on 12/26/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        VStack {
            Text(String(viewModel.val))
            Slider(value: $viewModel.val)
            TickView()
        }
        .padding()
        .frame(width: 500)
        .fixedSize()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
