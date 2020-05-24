//
//  LoginViewModel.swift
//  ApolloExample
//
//  Created by ilario salatino on 24.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    func login(username: String, password: String){
        Network.shared.apollo.fetch(query: LogInQuery(username: username, password: password)){
            result in
            switch result {
            case .success(let graphQLResult):
                print("Success! Result: \(String(describing: graphQLResult.data?.user[0].id))")
            case .failure(let error):
              print("Failure! Error: \(error)")
            }
        }
    }
    
}
