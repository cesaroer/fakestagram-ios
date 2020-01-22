//
//  NotificationNames.swift
//  fakestagram
//
//  Created by Cesar Vargas D4 on 11/11/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation

enum NotificationKeys {
    case didFinishPostCreation
    
    var value: Notification.Name {
        switch self {
        case .didFinishPostCreation:
            return Notification.Name(rawValue: "didFinishPostCreationNotification")
        }
    }
}
