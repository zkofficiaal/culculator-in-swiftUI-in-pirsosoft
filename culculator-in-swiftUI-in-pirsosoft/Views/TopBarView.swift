//
//  TopBarView.swift
//  culculator-in-swiftUI-in-pirsosoft
//
//  Created by Z.K   on 07/07/2026.
//

import SwiftUI

struct TopBarView: View {

    var body: some View {

        HStack {
            Button {
            } label: {
                Image(systemName: "clock.arrow.circlepath")
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(
                        width: Constants.topButtonSize,
                        height: Constants.topButtonSize
                    )
                    .background(Color.gray.opacity(0.25))
                    .clipShape(Circle())
            }

            Spacer()

            Button {

            } label: {
                
                Image("culculator emoji")
                //.font(.title2)
                    .foregroundColor(.white)
                    .frame(
                        width: Constants.topButtonSize,
                        height: Constants.topButtonSize)
                    .background(Color.gray.opacity(0.25))
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TopBarView()
}
