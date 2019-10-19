//
//  CameraViewController.swift
//  Fakestagram-Xcode10
//
//  Created by Cesar Vargas D4 on 10/19/19.
//  Copyright © 2019 unam. All rights reserved.
//

import UIKit

class CammeraViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
 
   let client = RestClient<CreatePost>(client: Client.fakestagram, basePath: "/api/v1/posts/")

    @IBAction
    func onTapCreate(_ sender: Any) {
        
        let img = UIImage(named: "meme2")!
        let newPost = CreatePost(title: "Momazozozozote Krnal - \(UUID().uuidString)", imageData: img.base64())
        client.create(newPost) { post in
            print("Successful!")
            print(post?.title as Any)
        
    }
        
    }
    
   
    
}
