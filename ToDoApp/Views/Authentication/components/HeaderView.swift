//
//  LoginHeaderView.swift
//  ToDoApp
//
//  Created by Madura Dias on 2024-12-09.
//

import SwiftUI

struct HeaderView: View {
    let offset : Double
    let angle : Double
    let title : String
    let description : String
    let foregroundColor : Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(foregroundColor)
                .rotationEffect(Angle(degrees:angle))
            
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(description)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                   
            }.padding(.top,30)
            
        }.frame(width: UIScreen.main.bounds.width * 3,height: UIScreen.main.bounds.height/2.9)
            .offset(y:offset)
    }
}

#Preview {
    HeaderView(
         offset: -190
         , angle: 15
         , title: "To Do List"
         , description: "Get things done"
         , foregroundColor: .red
    )
}
