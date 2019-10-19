//
//  Comment.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/19/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

struct Comment: Codable {
    let content: String
    let author: Author?
}
