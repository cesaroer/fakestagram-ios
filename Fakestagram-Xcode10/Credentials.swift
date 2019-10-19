//
//  Credentials.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/19/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

enum Credentials {
    case apiToken
    
    func get() -> String? {
        switch self {
        case .apiToken:
            return "f41af9b1-5a7e-4f0b-8c88-e44f686b1d2e"
        }
    }
    
    func set(value: String) -> Bool {
        return true
    }
}
