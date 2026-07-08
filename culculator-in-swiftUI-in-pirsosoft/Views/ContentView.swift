//
//  ContentView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K   on 07/07/2026.
//

import SwiftUI

struct ContentView: View {

    // MARK: - ViewModel

    @StateObject private var viewModel = CalculatorViewModel()

    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()

            VStack(spacing: 20) {
                
                TopBarView()
                
                Spacer()

                DisplayView(viewModel: viewModel)

                Spacer()

                ButtonGridView(viewModel: viewModel)

            }
            .padding(.horizontal, Constants.horizontalPadding)
            .padding(.vertical, Constants.verticalPadding)
        }
    }
}

#Preview {
    ContentView()
}
