//
//  Network.swift
//  ApolloExample
//
//  Created by ilario salatino on 23.05.20.
//  Copyright © 2020 ilario salatino. All rights reserved.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private lazy var networkTransport: HTTPNetworkTransport = {
        let configuration = URLSessionConfiguration.default
        
        let url = URL(string: "http://0.0.0.0:8080/v1/graphql")
        let transport = HTTPNetworkTransport(url: url!, session: URLSession(configuration: configuration), sendOperationIdentifiers: false, useGETForQueries: false, enableAutoPersistedQueries: false, useGETForPersistedQueryRetry: false, requestCreator: ApolloRequestCreator())
        self.networkTransport = transport;
        
        return transport
    }()
    
    private(set) lazy var apollo = ApolloClient(networkTransport: self.networkTransport)
}
