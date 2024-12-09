//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Madura Dias on 2024-12-09.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(
                     offset: -140
                     , angle: -15
                     , title: "To Do List"
                     , description: "Get things done"
                     , foregroundColor: .orange
                )
               
                Form{
                    
                    TextField("Name",text: $name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(10)
                    
                    TextField("Email Address",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(10)
                    
                    SecureField("Create Password",text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(10)
                    
                    
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.green)
                            
                            Text("Create Account")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }.padding()
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
