//
//  TextfieldText.swift
//  fakestagramTests
//
//  Created by Cesar on 22/01/20.
//  Copyright © 2020 3zcurdia. All rights reserved.
//

import Foundation
import XCTest
@testable import fakestagram

class TextfieldTextTest: XCTestCase {
    var image = UIImage(named: "baseImage")!
    let service = CreatePostService()
    let text = "hola"
    let opcionalInt :Int? = nil
    
    
    func testValidTextField(imag: UIImage, txt: String) {
        var varTest: Bool!
        
        if (txt != ""){
        service.call(image: imag, title: txt) {opcionalInt in print("hola")}
            varTest = true
        }else {varTest = false}
        
        XCTAssertTrue(varTest)
    }
    
     
    
    

}

