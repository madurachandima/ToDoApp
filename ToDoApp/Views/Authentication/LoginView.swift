//
//  LoginView.swift
//  ToDoApp
//
//  Created by Madura Dias on 2024-12-09.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                HeaderView(
                     offset: -190
                     , angle: 15
                     , title: "To Do List"
                     , description: "Get things done"
                     , foregroundColor: .red
                )
                
                Form{
                    TextField("Email Address",text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(10)
                    
                    SecureField("Password",text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(10)
                    
                    Button {
                     
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                                
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }.padding()

                }
                
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create Account", destination: RegisterView())
                        .padding(.bottom,50)
                   

                }
                Spacer()
            }
        }
       
    }
}

#Preview {
    LoginView()
}
 
