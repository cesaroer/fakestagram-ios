//
//  CheckSumTest.swift
//  Fakestagram-Xcode10Tests
//
//  Created by Cesar Vargas D4 on 11/23/19.
//  Copyright © 2019 unam. All rights reserved.
//

import XCTest
//import CryptoKit
@testable import Fakestagram_Xcode10Tests

class CheckSumTest: XCTestCase {
    
    func testPerformanceExample() {
        let text = "lorem ipsum dolor quet sit amet consectetur"
        //        let data = text.data(using: .utf8)!
        let expected = "df033ae7d7ff21916308e1e0f52c8f559f76bed69f5b4f8ed6237514bed8e2c4"
        self.measure {
            let result = CheckSum.sha256String(text)
            //            let result = String(SHA256.hash(data: data).description.dropFirst(15))
            XCTAssertEqual(expected, result)
        }
    }
    
}
