//
//  Account.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/19/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

struct Account: Codable {
    let id: String?
    let name: String
    let avatarUrl: String?
    let deviceNumber: String?
    let deviceModel: String
}
