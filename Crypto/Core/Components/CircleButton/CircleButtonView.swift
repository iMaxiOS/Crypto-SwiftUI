//
//  CircleButtonView.swift
//  Crypto
//
//  Created by Maxim Granchenko on 10.06.2021.
//

import SwiftUI

struct CircleButtonView: View {
    var iconName: String
    var handleCompletion: () -> ()
    
    var body: some View {
        Button(action: {
            handleCompletion()
        }, label: {
            Image(systemName: iconName)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .frame(width: 50, height: 50)
                .background(
                    Circle()
                        .foregroundColor(Color.theme.background)
                )
                .shadow(color: Color.theme.accent.opacity(0.25), radius: 10, x: 0.0, y: 0.0)
                .padding()
        })
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleButtonView(iconName: "info", handleCompletion: {})
                .previewLayout(.sizeThatFits)

            CircleButtonView(iconName: "plus", handleCompletion: {})
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
