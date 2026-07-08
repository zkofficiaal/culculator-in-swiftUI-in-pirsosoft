//
//  CalculatorButton.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K on 07/07/2026.
//

//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Muhammad Zahid Khan.
//

import SwiftUI

struct CalculatorButton: View {

    // MARK: - Properties

    let title: String
    let backgroundColor: Color
    let action: () -> Void

    // MARK: - Body

    var body: some View {

        Button(action: action) {
            Text(title)
                .font(.system(size: 32, weight: .medium))
                .foregroundColor(.white)
                .frame(
                    width: Constants.buttonSize,
                    height: Constants.buttonSize
                )
                .background(backgroundColor)
                .clipShape(Circle())
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()

        CalculatorButton(
            title: "7",
            backgroundColor: .gray
        ) {
            print("Button Pressed")
        }
    }
}
