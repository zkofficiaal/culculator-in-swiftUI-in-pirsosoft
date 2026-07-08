//
//  DisplayView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K   on 07/07/2026.
//

import SwiftUI

struct DisplayView: View {
    var text : String
    
    var body: some View {
        HStack{
            Spacer()
            
            Text(text)
                .font(.system(size: 84, weight: .ultraLight))
                .foregroundStyle(.white)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
        }
    }
}

#Preview {
    DisplayView()
}
