//
//  ContentView.swift
//  ColorFlipper
//
//  Created by Nicolas Clapiès on 2022-11-27.
//

import SwiftUI

public extension Double {

    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    static var random: Double {
        return Double(arc4random()) / 0xFFFFFFFF
    }

    /// Random double between 0 and n-1.
    ///
    /// - Parameter n:  Interval max
    /// - Returns:      Returns a random double point number between 0 and n max
    static func random(min: Double, max: Double) -> Double {
        let value = Double.random * (max - min) + min
        print("New value: \(value)")
        return value
    }
}

struct ContentView: View {
    @State private var color: Color = Color.white
    var body: some View {
        VStack {
            Button("Refresh") {
                color = Color(
                    red: Double.random(min: 0.0, max: 1.0),
                    green: Double.random(min: 0.0, max: 1.0),
                    blue: Double.random(min: 0.0, max: 1.0))
            }
            Text("Press button to change colour")
                .font(.footnote)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center
        )
        .background(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
