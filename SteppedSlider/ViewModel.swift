//
//  ViewModel.swift
//  SteppedSlider
//
//  Created by Josh Kowarsky on 12/26/20.
//

import Combine
import Foundation

class ViewModel: ObservableObject {
    @Published private var privateVal: Float = 0
    var val: Float {
        set {
            let floored = Double(round(10 * newValue) / 10)
            privateVal = Float(floored)
        }
        get {
            privateVal
        }
    }
}
