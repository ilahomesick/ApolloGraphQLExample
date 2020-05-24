//
//  SignUpView.swift
//  ApolloExample
//
//  Created by ilario salatino on 23.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var model = SignUpViewModel()
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    var body: some View {
        VStack{
            TextField("Username", text: $username)
            .padding()
            .background(Color(.lightGray))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            SecureField("Password", text: $password)
            .padding()
            .background(Color(.lightGray))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            TextField("Email", text: $email)
            .padding()
            .background(Color(.lightGray))
            .cornerRadius(5.0)
            .padding(.bottom, 20)
            Button(action: {
                self.model.signUp(username: self.username, password: self.password, email: self.email)
            }){
                Text("Sign Up").padding()
            }.foregroundColor(.white)
            .background(Color(.systemBlue))
            .cornerRadius(5.0)
            .padding()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
