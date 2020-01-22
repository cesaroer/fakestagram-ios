//
//  StorageType.swift
//  fakestagram
//
//  Created by Cesar Vargas D4 on 11/11/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

enum StorageType {
    case cache
    case permanent

    var searchPathDirectory: FileManager.SearchPathDirectory {
        switch self {
        case .cache:
            return .cachesDirectory
        case .permanent:
            return .documentDirectory
        }
    }

    var url: URL {
        var url = FileManager.default.urls(for: searchPathDirectory, in: .userDomainMask).first!
        let applicationPath = "mx.unam.ioslab.fakestagram.storage"
        url.appendPathComponent(applicationPath)
        return url
    }

    var path: String {
        return url.path
    }

    func clear() {
        try? FileManager.default.removeItem(at: url)
    }

    func ensureExists() {
        var isDir: ObjCBool = false
        if FileManager.default.fileExists(atPath: path, isDirectory: &isDir) {
            if isDir.boolValue { return }
            clear()
        }
        try? FileManager.default.createDirectory(at: url, withIntermediateDirectories: false, attributes: nil)
    }
}
