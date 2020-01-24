//
//  IndexService.swift
//  fakestagram
//
//  Created by Cesar Vargas D4 on 11/9/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

class IndexService {
    let client = RestClient<[Post]>(client: Client.fakestagram, basePath: "/api/v1/posts")

    func call(success: @escaping ([Post]?) -> Void) {
        client.show(success: success)
    }
}
