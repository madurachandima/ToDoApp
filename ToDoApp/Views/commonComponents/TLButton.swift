//
//  TLButton.swift
//  ToDoApp
//
//  Created by Madura Dias on 2024-12-09.
//

import SwiftUI

struct TLButton: View {
    let buttonText: String
    let buttonColor: Color
    let buttonAction: () -> Void
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(buttonColor)
                    
                Text(buttonText)
                    .foregroundColor(.white)
                    .bold()
            }
        } .padding()
    }
}

#Preview {
    TLButton(buttonText: "Title",buttonColor: .red)
}
