//
//  CodableSerializer.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/19/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

class CodableSerializer<T: Codable> {
    let data: Data?
    let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
    
    init(data: Data?) {
        self.data = data
    }
    
    func async(result: @escaping (T?) -> Void) {
        guard let data = data else {
            DispatchQueue.main.async { result(nil) }
            return
        }
        do {
            debugPrint(String(data: data, encoding: .utf8))
            let json = try decoder.decode(T.self, from: data)
            DispatchQueue.main.async { result(json) }
        } catch let err {
            print("Invalid JSON format: \(err.localizedDescription)")
        }
    }
}
