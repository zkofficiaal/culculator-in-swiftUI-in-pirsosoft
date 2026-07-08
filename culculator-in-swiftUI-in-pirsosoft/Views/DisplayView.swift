//
//  DisplayView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K on 07/07/2026.
//

import SwiftUI

struct DisplayView: View {

    // MARK: - ViewModel
    @ObservedObject var viewModel: CalculatorViewModel

    var body: some View {

        HStack {

            Spacer()

            Text(viewModel.displayText)
                .font(.system(size: Constants.displayFontSize, weight: .semibold))
                .foregroundColor(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.4)
                .multilineTextAlignment(.trailing)
        }
        .padding(.horizontal)
        .padding(.bottom, 20)
    }
}

#Preview {
    DisplayView(viewModel: CalculatorViewModel())
}
