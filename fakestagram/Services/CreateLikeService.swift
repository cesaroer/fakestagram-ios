//
//  CreateLikeService.swift
//  fakestagram
//
//  Created by Cesar on 22/01/20.
//  Copyright © 2020 3zcurdia. All rights reserved.
//

import Foundation

struct CreateLike: Codable{
    let postId: Int?
}

class CreateLikeService{
    
    private let client = RestClient<CreateLike>(client: Client.fakestagram, basePath: "/api/v1/posts/")
    
    func call(postId: Int?, success: @escaping (Int?) -> Void) -> Void {
        let newLike = CreateLike(postId: postId)
        
        client.create(id: newLike.postId, newLike) { like in
            NotificationCenter.default.post(
                name: NotificationKeys.didFinishPostCreation.value,
                object: nil
            )
            success(like?.postId)
        }
    }
}

