//
//  SteppedSliderApp.swift
//  SteppedSlider
//
//  Created by Josh Kowarsky on 12/26/20.
//

import SwiftUI

@main
struct SteppedSliderApp: App {
    private let viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
