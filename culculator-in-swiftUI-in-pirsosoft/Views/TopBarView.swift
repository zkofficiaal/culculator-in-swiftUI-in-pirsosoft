//
//  TopBarView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K   on 07/07/2026.
//

import SwiftUI

struct TopBarView: View {
    var body: some View {
        HStack{
            CircleButton(icon: "clock", background: .gray)
            
            Spacer()
            
            CircleButton(icon: "keyboard.fill", background: .gray)
        }
    }
}

struct CircleButton : View {
    let icon : String
    let background : Color
    
    var body: some View{
        Button(action: {}){
            Image(systemName: icon)
                .font(.system(size: 22, weight: .semibold))
                .foregroundStyle(.white)
                .frame(width: 44, height: 44)
                .background(Circle().fill(background))
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    TopBarView()
}
