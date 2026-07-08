//
//  ContentView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K   on 07/07/2026.
//


//├── App
//│      CalculatorApp.swift
//│
//├── Views
//│      ContentView.swift
//│      TopBarView.swift
//│      DisplayView.swift
//│      ButtonGridView.swift
//│      CalculatorButton.swift
//│
//├── ViewModels
//│      CalculatorViewModel.swift
//│
//├── Models
//│      CalculatorButtonType.swift
//│
//├── Utilities
//│      AppColors.swift
//│      Constants.swift
//│
//└── Assets

import SwiftUI

struct ContentView: View {
    //@StateObject private var viewModel = CalculatorViewModel()

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing : 20) {
                TopBarView()
                    .foregroundStyle(.white)
                Spacer()
                
                DisplayView()
                    .foregroundStyle(.white)
                
                Spacer()
                
                ButtonGridView()
                    .foregroundStyle(Color.white)
            }
            .padding(.horizontal, 20) //?
            .padding(.vertical) //?
            
        }
    }
}

#Preview {
    ContentView()
}
