//
//  CalculatorViewModel.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K on 07/07/2026.
//

import Foundation
import SwiftUI
import Combine

// MARK: - Calculator ViewModel
final class CalculatorViewModel: ObservableObject {

    // MARK: - Published Properties
    @Published var displayText: String = "0"

    // MARK: - Stored Properties
    private var currentValue: Double = 0
    private var previousValue: Double = 0
    private var selectedOperator: CalculatorButtonType?
    private var isTypingNumber = false

    // MARK: - Button Press Handler
    func buttonPressed(_ button: CalculatorButtonType) {

        switch button {

        // MARK: Numbers
        case .zero:
            appendNumber("0")

        case .one:
            appendNumber("1")

        case .two:
            appendNumber("2")

        case .three:
            appendNumber("3")

        case .four:
            appendNumber("4")

        case .five:
            appendNumber("5")

        case .six:
            appendNumber("6")

        case .seven:
            appendNumber("7")

        case .eight:
            appendNumber("8")

        case .nine:
            appendNumber("9")

        // MARK: Operators

        case .add,
             .subtract,
             .multiply,
             .divide:

            performOperator(button)

        case .equal:
            calculateResult()

        // MARK: Special Buttons
        case .clear:

            clearCalculator()

        case .delete:
            deleteLastCharacter()

        case .decimal:
            addDecimal()

        case .percent:
            percentage()

        case .plusMinus:
            toggleSign()
        }

    }

}

// MARK: - Private Functions
private extension CalculatorViewModel {

    // MARK: Append Number

    func appendNumber(_ number: String) {

        if isTypingNumber {

            displayText += number

        } else {

            displayText = number
            isTypingNumber = true

        }

    }

    // MARK: Decimal

    func addDecimal() {

        if !displayText.contains(".") {

            displayText += "."

            isTypingNumber = true

        }

    }

    // MARK: Clear
    func clearCalculator() {
        displayText = "0"
        currentValue = 0
        previousValue = 0
        selectedOperator = nil
        isTypingNumber = false
    }

    // MARK: Delete
    func deleteLastCharacter() {
        guard !displayText.isEmpty else { return }
        displayText.removeLast()

        if displayText.isEmpty {
            displayText = "0"

            isTypingNumber = false
        }
    }

    // MARK: Positive / Negative

    func toggleSign() {
        guard let value = Double(displayText) else { return }
        displayText = formatNumber(-value)
    }

    // MARK: Percentage
    func percentage() {
        guard let value = Double(displayText) else { return }
        displayText = formatNumber(value / 100)
    }

    // MARK: Store Operator
    func performOperator(_ operation: CalculatorButtonType) {
        previousValue = Double(displayText) ?? 0
        selectedOperator = operation
        isTypingNumber = false
    }

    // MARK: Calculate
    func calculateResult() {
        guard let operation = selectedOperator else { return }
        currentValue = Double(displayText) ?? 0
        var result: Double = 0
        switch operation {
            
        case .add:
            result = previousValue + currentValue

        case .subtract:
            result = previousValue - currentValue
            
        case .multiply:
            result = previousValue * currentValue

        case .divide:
            if currentValue == 0 {
                displayText = "Error"
                return
            }
            result = previousValue / currentValue
            
        default:
            return
        }

        displayText = formatNumber(result)
        previousValue = result
        isTypingNumber = false
    }

    // MARK: Number Formatter
    func formatNumber(_ number: Double) -> String {
        if number.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(number))
        }
        return String(number)
    }
}
