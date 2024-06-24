//
//  StepperView.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 10/6/2024.
//

import SwiftUI

struct StepperView: View {
    @State private var valueA = 0
    @State private var valueB = 0

    let colors: [Color] = [.orange, .red, .gray, .blue,
                           .green, .purple, .pink]


    func incrementStep() {
        valueB += 1
        if valueB >= colors.count { valueB = 0 }
    }


    func decrementStep() {
        valueB -= 1
        if valueB < 0 { valueB = colors.count - 1 }
    }
        let step = 5
        let range = 1...50

    var body: some View {
        Form {
            Stepper(
                value: $valueA,
                in: range,
                step: step
            ) {
                Text("Current: \(valueA) in \(range.description) " +
                     "stepping by \(step)")
            }
            .padding(5)
            Stepper {
                Text("Value: \(valueB) Color: \(colors[valueB].description)")
            } onIncrement: {
                incrementStep()
            } onDecrement: {
                decrementStep()
            }
            .padding(5)
            .background(colors[valueB])
        }
    }
}

#Preview {
    StepperView()
}
