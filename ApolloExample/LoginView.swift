//
//  SignUpView.swift
//  ApolloExample
//
//  Created by ilario salatino on 23.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var model = LoginViewModel()
    @State var username: String = ""
    @State var password: String = ""
    
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
            Button(action: {
                self.model.login(username: self.username, password: self.password)
            }){
                Text("Log in").padding()
            }.foregroundColor(.white)
            .background(Color(.systemBlue))
            .cornerRadius(5.0)
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
