//
//  SignUpViewModel.swift
//  ApolloExample
//
//  Created by ilario salatino on 23.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class SignUpViewModel: ObservableObject{
    
    func signUp(username: String, password: String, email: String){
        Network.shared.apollo.perform(mutation: SignUpMutation(username: username, password: password, email: email=="" ? nil : email)){
            result in
            switch result {
            case .success(let graphQLResult):
              print("Success! Result: \(graphQLResult)")
            case .failure(let error):
              print("Failure! Error: \(error)")
            }
        }
    }
    
}
