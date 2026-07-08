//
//  ButtonGridView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K on 07/07/2026.
//

import SwiftUI
import Combine
import Foundation

struct ButtonGridView: View {

    // MARK: - ViewModel

    @ObservedObject var viewModel: CalculatorViewModel

    var body: some View {

        VStack(spacing: Constants.buttonSpacing) {

            // MARK: - First Row

            HStack(spacing: Constants.buttonSpacing) {

                CalculatorButton(
                    title: "⌫",
                    backgroundColor: AppColors.topButton
                ) {
                    viewModel.buttonPressed(.delete)
                }

                CalculatorButton(
                    title: "AC",
                    backgroundColor: AppColors.topButton
                ) {
                    viewModel.buttonPressed(.clear)
                }

                CalculatorButton(
                    title: "%",
                    backgroundColor: AppColors.topButton
                ) {
                    viewModel.buttonPressed(.percent)
                }

                CalculatorButton(
                    title: "÷",
                    backgroundColor: AppColors.operatorButton
                ) {
                    viewModel.buttonPressed(.divide)
                }

            }

            // MARK: - Second Row

            HStack(spacing: Constants.buttonSpacing) {

                CalculatorButton(
                    title: "7",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.seven)
                }

                CalculatorButton(
                    title: "8",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.eight)
                }

                CalculatorButton(
                    title: "9",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.nine)
                }

                CalculatorButton(
                    title: "×",
                    backgroundColor: AppColors.operatorButton
                ) {
                    viewModel.buttonPressed(.multiply)
                }

            }

            // MARK: - Third Row

            HStack(spacing: Constants.buttonSpacing) {

                CalculatorButton(
                    title: "4",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.four)
                }

                CalculatorButton(
                    title: "5",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.five)
                }

                CalculatorButton(
                    title: "6",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.six)
                }

                CalculatorButton(
                    title: "−",
                    backgroundColor: AppColors.operatorButton
                ) {
                    viewModel.buttonPressed(.subtract)
                }

            }

            // MARK: - Fourth Row

            HStack(spacing: Constants.buttonSpacing) {

                CalculatorButton(
                    title: "1",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.one)
                }

                CalculatorButton(
                    title: "2",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.two)
                }

                CalculatorButton(
                    title: "3",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.three)
                }

                CalculatorButton(
                    title: "+",
                    backgroundColor: AppColors.operatorButton
                ) {
                    viewModel.buttonPressed(.add)
                }

            }

            // MARK: - Fifth Row

            HStack(spacing: Constants.buttonSpacing) {

                CalculatorButton(
                    title: "+/-",
                    backgroundColor: AppColors.topButton
                ) {
                    viewModel.buttonPressed(.plusMinus)
                }

                CalculatorButton(
                    title: "0",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.zero)
                }

                CalculatorButton(
                    title: ".",
                    backgroundColor: AppColors.numberButton
                ) {
                    viewModel.buttonPressed(.decimal)
                }

                CalculatorButton(
                    title: "=",
                    backgroundColor: AppColors.operatorButton
                ) {
                    viewModel.buttonPressed(.equal)
                }

            }

        }

    }

}

#Preview {

    ButtonGridView(
        viewModel: CalculatorViewModel()
    )

}
